#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#define ATS_EXTERN_PREFIX ""

typedef chars = List0(char)
vtypedef nzchars = List0_vt(charNZ)

extern
fun{env:vt0p}
str_rforeach$cont(c: char, env: &env): bool
= "mac#"
extern
fun{env:vt0p}
str_rforeach$fwork(c: char, env: &(env) >> _): void
= "mac#"
extern
fun{}
str_rforeach{n:int}
(str: string(n)): sizeLte(n)
= "mac#"
extern
fun{env:vt0p}
str_rforeach_env{n:int}
(str: string(n), env: &(env) >> _): sizeLte(n)
= "mac#"
implement{}(*tmp*)
str_rforeach(str) = str_rforeach_env<void>(str, env)
where
  var env: void = ()
end

implement{env}(*tmp*)
str_rforeach_env{n}(str, env) = let

  fun loop(p0: ptr, p1: ptr, env: &env >> _) : ptr =
  let in
    if (p1 > p0) then let
        val p2 = ptr_pred<char>(p1)
        val c2 = $UN.ptr0_get<charNZ>(p2)
        val cont = str_rforeach$cont<env>(c2, env)
      in
        if cont then
          let
            val () = str_rforeach$fwork<env>(c2, env)
          in
            loop(p0, p2, env)
          end
        else (p1)
      end
    else (p1)
  end

  val p0 = ptrcast(str)
  val p1 = ptr_add<char>(p0, length(str))

in
  $UN.cast{sizeLte(n)}(p1 - loop(p0, p1, env))
end // end of [str_rforeach_env]

(* ****** ****** *)

implement{env} str_rforeach$cont(c, env) = true
implement{env} str_rforeach$fwork(c, env) = ((*void*))



extern
fun{a:t0p}
str_foldr{n:int}(str: string(n), ini: a): a
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr$fopr(c: char, res: a, env: &(env) >> _): a
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr$cont(c: char, env: &env): bool
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr$include(c: char, env: &env): bool
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr_env{n:int}(str: string(n), ini: a, env: &(env) >> _): a


implement{a}(*tmp*)
str_foldr(str, ini) = str_foldr_env<a><void>(str, ini, env)
where
  var env: void = ()
end

implement{a}{env}(*tmp*)
str_foldr_env{n}(str, ini, env) = let
  fun loop(p0: ptr, p1: ptr, res: a, env: &env >> _): a = let in
    if (p1 > p0) then
      let
        val p2 = ptr_pred<char>(p1)
        val c2 = $UN.ptr0_get<charNZ>(p2)
        val cont = str_foldr$cont<a><env>(c2, env)
      in
        if cont
        then loop(p0, p2, str_foldr$fopr<a><env>(c2, res, env), env)
        else if str_foldr$include<a><env>(c2, env)
        then str_foldr$fopr<a><env>(c2, res, env)
        else res
      end
    else res
  end
  val p0 = ptrcast(str)
  val p1 = ptr_add<char>(p0, length(str))
in
  loop(p0, p1, ini, env)
end


(* ****** ****** *)

implement{a}{env} str_foldr$include(c, env) = false
implement{a}{env} str_foldr$cont(c, env) = true
implement{a}{env} str_foldr$fopr(c, res, env) = res //((*void*))



(* ****** ****** *)


extern
fun{a:t0p}
str_foldr_flip{n:int}
(str: string(n), ini: a): a
= "mac#"

extern
fun{a:t0p}{env:vt0p}
str_foldr_flip$cont(c: char, res: a, env: &env): bool
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr_flip$fopr(c: char, res: a, env: &(env) >> _): a
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr_flip$init(env: &env): bool
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr_flip$lim(env: &env): int
= "mac#"

extern
fun{a:t0p}{env:vt0p}
str_foldr_flip_env{n:int}
(str: string(n), ini: a, env: &(env) >> _): a
= "mac#"

implement{a}(*tmp*)
str_foldr_flip(str, ini) = str_foldr_flip_env<a><void>(str, ini, env)
where
  var env: void = ()
end

(*
implement{a}{env}(*tmp*)
str_foldr_flip_env{n}(str, ini, env) = loop(flip_ini, p0, p1, ini, env)
where
fun loop(flip: bool, p0: ptr, p1: ptr, res: a, env: &env >> _): a =
let in
  ifcase (p1 > p0) => loop(flip, p0, p2, res, env)
    where
      val p2 = ptr_pred<char>(p1)
      val c2 = $UN.ptr0_get<charNZ>(p2)
      val cont = str_foldr_flip$cont<a><env>(c2, res, env)
      val res = (if flip && not(cont) then next else res): a
        where
          val next = str_foldr_flip$fopr<a><env>(c2, res, env)
        end
      val flip = cont != flip
    end
  | _ => res
end

val p0 = ptrcast(str)
val p1 = ptr_add<char>(p0, length(str))
val flip_ini = str_foldr_flip$init<a><env>(env)
end
*)


implement{a}{env}(*tmp*)
str_foldr_flip_env{n}(str, ini, env) =
(
  if lim < 0
  then loop0(flip_ini, p0, p1, ini, env)
  else loop1(0, flip_ini, p0, p1, ini, env)
)
where
val lim = str_foldr_flip$lim<a><env>(env)

fun loop0(flip: bool, p0: ptr, p1: ptr, res: a, env: &env >> _): a =
let in
  ifcase (p1 > p0) => loop0(flip, p0, p2, res, env)
    where
      val p2 = ptr_pred<char>(p1)
      val c2 = $UN.ptr0_get<charNZ>(p2)
      val cont = str_foldr_flip$cont<a><env>(c2, res, env)
      val res = (if flip && not(cont) then next else res): a
        where
          val next = str_foldr_flip$fopr<a><env>(c2, res, env)
        end
      val flip = cont != flip
    end
  | _ => res
end
//
fun loop1(limit: int, flip: bool, p0: ptr, p1: ptr, res: a, env: &env >> _): a =
let in
  ifcase
  | (limit = lim) => res
  | (p1 > p0) => loop1(limit, flip, p0, p2, res, env)
    where
      val p2 = ptr_pred<char>(p1)
      val c2 = $UN.ptr0_get<charNZ>(p2)
      val cont = str_foldr_flip$cont<a><env>(c2, res, env)
      val check = flip && not(cont)
      val res = (if check then next else res): a
        where
          val next = str_foldr_flip$fopr<a><env>(c2, res, env)
        end
      val flip = cont != flip
      val flipped = not(check) && flip
      val limit = (if flipped then limit + 1 else limit)
    end
  | _ => res
end

val p0 = ptrcast(str)
val p1 = ptr_add<char>(p0, length(str))
val flip_ini = str_foldr_flip$init<a><env>(env)
end




(* ****** ****** *)

implement{a}{env} str_foldr_flip$lim(env) = ~1
implement{a}{env} str_foldr_flip$init(env) = false
implement{a}{env} str_foldr_flip$cont(c, res, env) = true
implement{a}{env} str_foldr_flip$fopr(c, res, env) = res //((*void*))






(* ****** ****** *)




extern
fun{a:t0p}
str_foldr_flip_lim{n:int}
(str: string(n), ini: a): a
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr_flip_lim$cont(c: char, res: a, env: &env): bool
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr_flip_lim$fopr(c: char, res: a, env: &(env) >> _): a
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr_flip_lim$init(env: &env): bool
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr_flip_lim$lim(lim: uint, env: &env): bool
= "mac#"
extern
fun{a:t0p}{env:vt0p}
str_foldr_flip_lim_env{n:int}
(str: string(n), ini: a, env: &(env) >> _): a
= "mac#"
implement{a}(*tmp*)
str_foldr_flip_lim(str, ini) = str_foldr_flip_lim_env<a><void>(str, ini, env)
where
  var env: void = ()
end


implement{a}{env}(*tmp*)
str_foldr_flip_lim_env{n}(str, ini, env) = loop(flip_ini, p0, p1, ini, 0u, env)
where
fun loop(flip: bool, p0: ptr, p1: ptr, res: a, lim: uint, env: &env >> _): a =
let in
  ifcase
  | str_foldr_flip_lim$lim<a><env>(lim, env) => res
  | (p1 > p0) => loop(flip, p0, p2, res, lim, env)
    where
      val p2 = ptr_pred<char>(p1)
      val c2 = $UN.ptr0_get<charNZ>(p2)
      val cont = str_foldr_flip_lim$cont<a><env>(c2, res, env)
      val check = flip && not(cont)
      val res = (if check then next else res): a
        where
          val next = str_foldr_flip_lim$fopr<a><env>(c2, res, env)
        end
      val flip = cont != flip
      val flipped = not(check) && flip
      val lim = (if flipped then lim + 1u else lim)
    end
  | _ => res
end
val p0 = ptrcast(str)
val p1 = ptr_add<char>(p0, length(str))
val flip_ini = str_foldr_flip_lim$init<a><env>(env)
end

(* ****** ****** *)

implement{a}{env} str_foldr_flip_lim$lim(lim, env) = false
implement{a}{env} str_foldr_flip_lim$init(env) = false
implement{a}{env} str_foldr_flip_lim$cont(c, res, env) = true
implement{a}{env} str_foldr_flip_lim$fopr(c, res, env) = res //((*void*))





(* ****** ****** *)





extern fun{} str_ext_list{n:int}(str: string(n)): chars
= "mac#"
extern fun{} str_ext_list$include{n:int}(): bool
= "mac#"

implement{} str_ext_list{n}(str) = str_foldr<chars>(str, list_nil())
where
{
  implement(env)
  str_foldr$fopr<chars><env>(c, res, env) = list_cons(c, res)
  implement(env)
  str_foldr$cont<chars><env>(c, env) = c != '.'
  implement(env)
  str_foldr$include<chars><env>(c, env) = str_ext_list$include<>()
}

implement{} str_ext_list$include() = false


(*
extern
fun{}
str_ext_strptr0{n:int}(str: string(n)): Strptr0
extern
fun{}
str_ext_strptr0$include{n:int}(): string

implement{} str_ext_strptr0{n}(str) =
  str_foldr<Strptr0>(str, string0_copy(""))
where
  implement(env)
  str_foldr$fopr<Strptr0><env>(c, res, env) =
    strptr2string(string_append(tostring_char(c), res))
  implement(env)
  str_foldr$cont<Strptr0><env>(c, res, env) = c != '.'
  implement(env)
  str_foldr$include<Strptr0><env>(c, res, env) = str_ext_strptr0$include<>()
end

implement{} str_ext_strptr0$include() = false
*)



(*
local
*)

(*
fun chr_str_app(chr: char, str: string): string
implement{} chr_str_app(chr, str) =
  strptr2string(string_append(tostring_char(chr), str))
*)


(*
val chr_str_app: (char, string) -> string =
  fix f(chr: char, str: string): string =>
*)
fun{} chr_str_app(chr: char, str: string): string =
  strptr2string(string_append(tostring_char(chr), str))

fun{} str_app2(str0: string, str1: string): string =
  strptr2string(string_append(str0, str1))

fun{} str_app3(s0: string, s1: string, s2: string): string =
  strptr2string(string0_append3(s0, s1, s2))

fun{} str_app4(s0: string, s1: string, s2: string, s3: string): string =
  strptr2string(string0_append4(s0, s1, s2, s3))

fun{} str_app5(s0: string, s1: string, s2: string, s3: string, s4: string): string =
  strptr2string(string0_append5(s0, s1, s2, s3, s4))

overload str_app with str_app2
overload str_app with str_app3
overload str_app with str_app4
overload str_app with str_app5

(*
in
*)


extern
fun{} filpath_ext_string0(str: string): string
= "mac#"
extern
fun{} filpath_ext_string1{n:int}(str: string(n)): string
= "mac#"
extern
fun{} filpath_ext_string$include{n:int}(): bool
= "mac#"

overload filpath_ext_string with filpath_ext_string0
overload filpath_ext_string with filpath_ext_string1 of 1

implement{}
filpath_ext_string0(str) = filpath_ext_string1<>(g1ofg0(str))

implement{}
filpath_ext_string1{n}(str) = str_foldr<string>(str, "")
where
{
  implement(env)
  str_foldr$fopr<string><env>(c, res, env) = chr_str_app<>(c, res)
  implement(env)
  str_foldr$cont<string><env>(c, env) = c != '.'
  implement(env)
  str_foldr$include<string><env>(c, env) = filpath_ext_string$include<>()
}

implement{}
filpath_ext_string$include() = false



extern fun{}
filpath_name_string0(str: string): string
= "mac#"
extern fun{}
filpath_name_string1{n:int}(str: string(n)): string
= "mac#"

overload filpath_name_string with filpath_name_string0
overload filpath_name_string with filpath_name_string1 of 1

implement{}
filpath_name_string0(str) = filpath_name_string1(g1ofg0(str))

implement{}
filpath_name_string1(fname) = str_foldr_flip<string>(fname, "")
where
  implement(env)
  str_foldr_flip$fopr<string><env>(c, res, env) = chr_str_app<>(c, res)
  implement(env)
  str_foldr_flip$cont<string><env>(c, res, env) = c = '.' orelse c = '/'
  implement(env)
  str_foldr_flip$lim<string><env>(env) = 2
end



(*
extern
fun{} strform$fn(chr: char, res: string): string
(* fun{} strform$fn(chr: char): char *)

extern
fun{} strform0(str: string): string
extern
fun{} strform1{n:int}(str: string(n)): string

overload strform with strform0
overload strform with strform1 of 1

implement{}
strform$fn(c, res) = tostring_char(c)

implement{}
strform0(str) = strform1<>(g1ofg0(str))

implement{}
strform1{n}(str) = str_foldr<string>(str, "")
where
{
  implement(env)
  str_foldr$fopr<string><env>(c, res, env) =
    (* chr_str_app<>(the_chr, res) *)
    str_app<>(the_res, res)
  where
    val the_res = strform$fn<>(c, res)
  end
}
*)


extern
fun{env:vt0p}
str_foldr_vt{n:int}(str: string(n), ini: &(env) >> _): void
= "mac#"
extern
fun{env:vt0p}
str_foldr_vt$fwork(c: char, env: &(env) >> _): void
= "mac#"
extern
fun{env:vt0p}
str_foldr_vt$cont(c: char, env: &env): bool
= "mac#"
extern
fun{env:vt0p}
str_foldr_vt$include(c: char, env: &env): bool
= "mac#"
extern
fun{env:vt0p}
str_foldr_vt_env{n:int}(str: string(n), env: &(env) >> _): void
= "mac#"

implement{env}(*tmp*)
str_foldr_vt{n}(str, env) =
{
  val i = str_rforeach_env<env>(str, env)
    where
      implement
      str_rforeach$cont<env>(x, env) =
      str_foldr_vt$cont<env>(x, env)
      implement
      str_rforeach$fwork<env>(x, env) =
      str_foldr_vt$fwork<env>(x, env)
    end
}


(* ****** ****** *)

implement{env} str_foldr_vt$include(c, env) = false
implement{env} str_foldr_vt$cont(c, env) = true
implement{env} str_foldr_vt$fwork(c, env) = ()


extern
fun{} strform$fn(chr: char): char // = "mac#"
= "mac#"
(* fun{} strform$fn(chr: char): char *)

extern
fun{} strform0(str: string): Strnptr1
= "mac#"
extern
fun{} strform1{n:int}(str: string(n)): Strnptr1
= "mac#"

overload strform with strform0
overload strform with strform1 of 1

implement{}
strform$fn(c) = $UN.cast{charNZ}(c)

implement{}
strform0(str) = strform1<>(g1ofg0(str))

implement{}
strform1{n}(str) = string_make_list_vt(lst) where
{
  var lst = $list_vt{charNZ}() : nzchars
  val () = str_foldr_vt<nzchars>(str, lst) where
    implement str_foldr_vt$fwork<nzchars>(c, env) = let
      val nxt = $UN.cast{charNZ}(strform$fn<>(c))
    in
      env := list_vt_cons(nxt, env)
    end
  end
}


////

///

implement main0() =
{
  val xs = "TEST/tail.dats"

(*
  val ys = strform<>(xs) where {
    implement strform$fn<>(c) = tolower(c)
  }
  val () = println!(ys)
  val () = free(ys)
*)


  vtypedef charz = List0_vt(charNZ)
  var lst = $list_vt{charNZ}() : charz
  val () = str_foldr_vt<charz>(xs, lst) where
  {
    implement str_foldr_vt$fwork<charz>(c, env) =
    {
      val nxt = $UN.cast{charNZ}(c)
      val () = env := list_vt_cons(nxt, env)
    }
  }
  val ys = string_make_list_vt(lst)
  val () = println!(ys)
  val () = free(ys)
}
