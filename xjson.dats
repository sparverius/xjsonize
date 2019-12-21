#include "share/atspre_staload.hats"
#staload "prelude/SATS/filebas.sats"
#staload UN = "prelude/SATS/unsafe.sats"

fn run(cmd: string): int = $extfcall(int, "system", cmd)

fn getopt {n:int}{i:nat}(n: int n, argv: !argv(n), i: int i) : stropt =
  if i < n then stropt_some (argv[i]) else stropt_none()

extern
fn get_line(fname: string): Option_vt(Strptr1)

local

fn aux(opt: Option_vt(FILEref)) : Option_vt(Strptr1) =
  case+ opt of
  | ~None_vt() => None_vt()
  | ~Some_vt(filr) => dup where
    val fil = streamize_fileref_line(filr)
    val dup =
      (case+ !fil of
      | ~stream_vt_nil() => None_vt()
      | ~stream_vt_cons(x, xs) => dup
        where
          val cp = strptr1_copy(x)
          val dup = Some_vt(cp)
          val () = (free(x); free(xs))
        end) : Option_vt(Strptr1)
    val () = fileref_close(filr)
    end
in
  implmnt get_line(fname) =
    aux(fileref_open_opt(fname, file_mode_r))
end

macdef to_str(x) = $UN.castvwtp1{string}(,(x))

fn mk_cmd(x: !Strptr1): Strptr1 =
  string_append("export XATSHOME=", to_str(x), " && ./xjsonize -d ; exit")

fn mk_cmd2(x: !Strptr1, y: string): Strptr1 =
  string_append("export XATSHOME=", to_str(x), " && ./xjsonize -d ", y)


implement main(ac, av) =
  case+ get_line(".xatshome") of
  | ~None_vt() => 1
  | ~Some_vt(x) => let in
    case+ ac of
    | 1 => result
      where
        val cmd = mk_cmd(x)
        val the_cmd = to_str(cmd)
        val result = run(the_cmd)
        val () = (free(cmd); free(x))
      end
    | _ => result
      where
        val opt = getopt(ac, av, 1)
        val () = assertloc(isneqz(opt))
        val cmd = mk_cmd2(x, stropt_unsome(opt))
        val the_cmd = to_str(cmd)
        val result = run(the_cmd)
        val () = (free(cmd); free(x))
      end
  end
