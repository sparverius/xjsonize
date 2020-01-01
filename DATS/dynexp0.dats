#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/dynexp0.sats"
#staload "{$x}/SATS/staexp0.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp0.sats"

#staload "./json.dats"
#staload _ = "./json.dats"
#staload _ = "./lexing_token.dats"
#staload _ = "./staexp0.dats"




implement
jsonize_val<token> = jsonize_token
implement
jsonize_val<s0exp> = jsonize_s0exp
implement
jsonize_val<sort0> = jsonize_sort0
implement
jsonize_val<s0arg> = jsonize_s0arg
implement
jsonize_val<t0arg> = jsonize_t0arg
implement
jsonize_val<s0marg> = jsonize_s0marg
implement
jsonize_val<t0marg> = jsonize_t0marg

local

implement
jsonize_val<sq0arg> = jsonize_sq0arg
implement
jsonize_val<tq0arg> = jsonize_tq0arg
implement
jsonize_val<ti0arg> = jsonize_ti0arg
implement
jsonize_val<f0arg> = jsonize_f0arg
implement
jsonize_val<s0qua> = jsonize_s0qua
implement
jsonize_val<s0exp> = jsonize_s0exp
implement
jsonize_val<q0arg> = jsonize_q0arg
implement
jsonize_val<d0gua> = jsonize_d0gua
implement
jsonize_val<d0ecl> = jsonize_d0ecl
implement
jsonize_val<s0exp> = jsonize_s0exp

implement
jsonize_val<d0exp> = jsonize_d0exp
implement
jsonize_val<i0dnt> = jsonize_i0dnt
implement
jsonize_val<s0exp> = jsonize_s0exp
implement
jsonize_val<f0arg> = jsonize_f0arg
implement
jsonize_val<d0arg> = jsonize_d0arg
implement
jsonize_val<a0typ> = jsonize_a0typ
implement
jsonize_val<d0pat> = jsonize_d0pat
implement
jsonize_val<d0clau> = jsonize_d0clau
implement
jsonize_val<f0undecl> = jsonize_f0undecl
implement
jsonize_val<v0aldecl> = jsonize_v0aldecl
implement
jsonize_val<v0ardecl> = jsonize_v0ardecl

implement
jsonize_val<d0cstdecl> = jsonize_d0cstdecl


in

  implement
  jsonize_val<a0typ> = jsonize_a0typ

  fun
  jsonize_a0typlstopt
  (opt: a0typlstopt): labjsonval = node("a0typlst_node", res) where
  val res =
  (
  case+ opt of
  | None() =>
    jsonify("None")
  | Some(a0ts) =>
    jsonify("Some", jsonize(a0ts))
    (* jsonify("Some", jsonize_list<a0typ>("a0typlst", a0ts)) *)
  ) : labjsonval
  end
//
  overload jsonize with jsonize_a0typlstopt of 100
  (* implement jsonize_val<a0typlstopt> = jsonize_a0typlstopt *)
//

  (* implement *)
  (* jsonize_val<s0qua> = jsonize_s0qua *)


implement jsonize_a0typlst(x) = jsonize_list<a0typ>("a0typlst", x)
implement jsonize_d0patlst(x) = jsonize_list<d0pat>("d0patlst", x)
implement jsonize_d0gualst(x) = jsonize_list<d0gua>("d0gualst", x)
implement jsonize_d0cstdeclist(x) = jsonize_list<d0cstdecl>("d0cstdeclist", x)

implement jsonize_d0arglst(x) = jsonize_list<d0arg>("d0arglst", x)

implement jsonize_d0explst(x) = jsonize_list<d0exp>("d0explst", x)
implement jsonize_d0eclist(x) = jsonize_list<d0ecl>("d0eclist", x)
implement jsonize_d0claulst(x) = jsonize_list<d0clau>("d0claulst", x)

implement jsonize_q0arglst(x) = jsonize_list<q0arg>("q0arglst", x)
implement jsonize_f0arglst(x) = jsonize_list<f0arg>("f0arglst", x)
implement jsonize_tq0arglst(x) = jsonize_list<tq0arg>("tq0arglst", x)
implement jsonize_sq0arglst(x) = jsonize_list<sq0arg>("sq0arglst", x)
implement jsonize_ti0arglst(x) = jsonize_list<ti0arg>("ti0arglst", x)

implement(a:type) jsonize_val<dl0abeled(a)> = jsonize_dl0abeled<a>

implement
jsonize_val<labd0exp> = jsonize_dl0abeled<d0exp>
implement
jsonize_val<labd0pat> = jsonize_dl0abeled<d0pat>

implement{} jsonize_labd0patlst(x) = jsonize_list<labd0pat>("labd0patlst", x)
implement{} jsonize_labd0explst(x) = jsonize_list<labd0exp>("labd0explst", x)

implement jsonize_f0undeclist(x) = jsonize_list<f0undecl>("foundeclist", x)
implement jsonize_v0aldeclist(x) = jsonize_list<v0aldecl>("v0aldeclist", x)
implement jsonize_v0ardeclist(x) = jsonize_list<v0ardecl>("v0ardeclist", x)


implement jsonize_d0expopt(x) = jsonize_option<d0exp>("d0expopt", x)


  implement
  jsonize_val<a0typlst> = jsonize_a0typlst


#include "./mac.dats"

end



implement
jsonize_q0arg
(x0) =
node("q0arg_node", res) where
val res =
(
//
case+
x0.node() of
(*
| Q0ARGnone(tok) =>
  jsonify("Q0ARGnone", "tok", jsonize(tok))
*)
| Q0ARGsome(sid, opt) => j2("Q0ARGsome", sid, opt)
  (* jsonify("Q0ARGsome", jsonize(sid), jsonize(opt)) *)
(*
    jsonize(sid),
    jsonize(opt) //jsonize_option<sort0>("sort0opt", opt)
  )
*)
//
) : labjsonval  (* end of [jsonize_q0arg] *)
end

implement
jsonize_a0typ
  (x0) =
node("a0typ_node", res) where
val res =
(
//
case+ x0.node() of
(*
| A0TYPnone(tok) =>
  jsonify("A0TYPnone", tok)
*)
| A0TYPsome(s0e, opt) => j2("A0TYPsome", s0e, opt)
  (* jsonify("A0TYPsome", jsonize(s0e), jsonize(opt)) *)
(*
    jsonize(s0e),
    jsonize_option<token>("tokenopt", opt)
  )
*)
//
) : labjsonval (* end of [jsonize_a0typ] *)
end

implement
jsonize_d0arg
  (x0) =
node("d0arg_node", res) where
val res =
(
//
case+ x0.node() of
//
| D0ARGnone(tok) =>
  jsonify("D0ARGnone", jsonize(tok))
//
| D0ARGsome_sta(tbeg, s0qs, tend) =>
  j3("D0ARGsome_sta", tbeg, s0qs, tend)
(*
  jsonify("D0ARGsome_sta",
    jsonize(tbeg),
    jsonize(s0qs), (* jsonize_list<s0qua>("s0qualst", s0qs), *)
    jsonize(tend)
  )
*)
//
| D0ARGsome_dyn1(tok) =>
  (* jsonify("D0ARGsome_dyn1", jsonize(tok)) *)
  j1("D0ARGsome_dyn1", tok)
| D0ARGsome_dyn2(tbeg, arg0, opt1, tend) =>
  j4("D0ARGsome_dyn", tbeg, arg0, opt1, tend)
(*
  jsonify("D0ARGsome_dyn",
    jsonize(tbeg),
    jsonize(arg0), // jsonize_list<a0typ>("a0typlst", arg0),
    jsonize(opt1),
    jsonize(tend)
  )
*)
//
) : labjsonval  (* end of [jsonize_d0arg] *)
end


implement
jsonize_f0arg
  (x0) =
("f0arg_node", res) : labjsonval
where
val res =
(
//
case+
x0.node() of
| F0ARGnone(tok) =>
  mknode("F0ARGnone", jsonize(tok))
| F0ARGsome_dyn(d0p) =>
  mknode("F0ARGsome_dyn", jsonize(d0p))
| F0ARGsome_sta(tbeg, s0qs, tend) =>
  mknode("F0ARGsome_sta", l3(tbeg, s0qs, tend))
| F0ARGsome_met(tbeg, s0es, tend) =>
  mknode("F0ARGsome_met", l3(tbeg, s0es, tend))
)
end (* end of [jsonize_f0arg] *)

(*
node("f0arg_node", res) where
val res =
(
//
case+
x0.node() of
| F0ARGnone(tok) =>
  jsonify("F0ARGnone", jsonize(tok))
| F0ARGsome_dyn(d0p) =>
  jsonify("F0ARGsome_dyn", jsonize(d0p))
| F0ARGsome_sta(tbeg, s0qs, tend) =>
  jsonify("F0ARGsome_sta",
    jsonize(tbeg),
    jsonize(s0qs), (* jsonize_list<s0qua>("s0qualst", s0qs), *)
    jsonize(tend)
  )
| F0ARGsome_met(tbeg, s0es, tend) =>
  jsonify("F0ARGsome_met",
    jsonize(tbeg),
    jsonize(s0es), (* jsonize_list<s0exp>("s0explst", s0es), *)
    jsonize(tend)
  )
) : labjsonval
end (* end of [jsonize_f0arg] *)
*)


implement
jsonize_sq0arg
  (x0) =
node("sq0arg_node", res) where
val res =
(
case+
x0.node() of
| SQ0ARGnone(tok) =>
  (* jsonify("SQ0ARGnone", jsonize(tok)) *)
  j1("SQ0ARGnone", tok)
| SQ0ARGsome(tbeg, q0as, tend) =>
  j3("SQ0ARGsome", tbeg, q0as, tend)
  (*
  jsonify("SQ0ARGsome",
    jsonize(tbeg),
    jsonize(q0as),
    jsonize(tend)
  )*)

) : labjsonval  (* end of [jsonize_sq0arg] *)
end


implement
jsonize_tq0arg
  (x0) =
node("tq0arg_node", res) where
val res =
(
case+
x0.node() of
| TQ0ARGnone(tok) =>
  j1("TQ0ARGnone", tok)
  (* jsonify("TQ0ARGnone", jsonize(tok)) *)
| TQ0ARGsome(tbeg, q0as, tend) =>
  j3("TQ0ARGsome", tbeg, q0as, tend)
  (* jsonify("TQ0ARGsome", jsonize(tbeg), jsonize(q0as), jsonize(tend)) *)
) : labjsonval
end


implement
jsonize_ti0arg
  (x0) =
node("ti0arg_node", res) where
val res =
(
case+
x0.node() of
| TI0ARGnone(tok) =>
  (* jsonify("TI0ARGnone", jsonize(tok)) *)
  j1("TI0ARGnone", tok)
| TI0ARGsome(tbeg, q0as, tend) =>
  (* jsonify("TI0ARGsome", jsonize(tbeg), jsonize(q0as), jsonize(tend)) *)
  j3("TI0ARGsome", tbeg, q0as, tend)
) : labjsonval
end


implement
{a}(*tmp*)
jsonize_dl0abeled
  (x0) = let
//
val+DL0ABELED(l0, t0, x1) = x0
//
in
  node("dl0abeled", res) where
  val res =
    jsonify("DL0ABELED",
      jsonize(l0),
      jsonize(t0),
      jsonize_val<a>(x1)
    ) : labjsonval
  end

end // end of [jsonize_dl0abeled]


local

  implement
  jsonize_val<d0pat> = jsonize_d0pat

  implement
  jsonize_val<dl0abeled(d0pat)> = jsonize_dl0abeled<d0pat>


in (* in-of-local *)

fun
name_d0pat(x: d0pat_node): string =
(
case+ x of
| D0Pid _ => "D0Pid"
| D0Pint _ => "D0Pint"
| D0Pchr _ => "D0Pchr"
| D0Pflt _ => "D0Pflt"
| D0Pstr _ => "D0Pstr"
| D0Papps _ => "D0Papps"
| D0Psqarg _ => "D0Psqarg"
| D0Pparen _ => "D0Pparen"
| D0Ptuple _ => "D0Ptuple"
| D0Precord _ => "D0Precord"
| D0Panno _ => "D0Panno"
| D0Pqual _ => "D0Pqual"
| D0Pnone _ => "D0Pnone"
)

implement
jsonize_d0pat(x0) =
("d0pat_node", mknode(name, data)) : labjsonval
where
val name = name_d0pat(x0.node())
val data =
(
case+ x0.node() of
| D0Pid(id) => jval(id)
| D0Pint(i0) => jval(i0)
| D0Pchr(c0) => jval(c0)
| D0Pflt(f0) => jval(f0)
| D0Pstr(s0) => jval(s0)
| D0Papps(d0ps) => jval(d0ps)
| D0Psqarg(tbeg, s0as, tend) => l3(tbeg, s0as, tend)
| D0Pparen(tbeg, d0ps, tend) => l3(tbeg, d0ps, tend)
| D0Ptuple(tbeg, topt, d0ps, tend) => l4(tbeg, topt, d0ps, tend)
| D0Precord(tbeg, topt, ld0ps, tend) => l4(tbeg, topt, ld0ps, tend)
| D0Panno(d0p, ann) => l2(d0p, ann)
| D0Pqual(tok, d0p) => l2(tok, d0p)
| D0Pnone(tok) => jval(tok)
) : jsonval
end
(*
where
val res =
(
case+ x0.node() of
| D0Pid(id) =>
  mknode("D0Pid", jsonize(id))
| D0Pint(i0) =>
  mknode("D0Pint", jsonize(i0))
| D0Pchr(c0) =>
  mknode("D0Pchr", jsonize(c0))
| D0Pflt(f0) =>
  mknode("D0Pflt", jsonize(f0))
| D0Pstr(s0) =>
  mknode("D0Pstr", jsonize(s0))
| D0Papps(d0ps) =>
  mknode("D0Papps", jsonize(d0ps))
| D0Psqarg(tbeg, s0as, tend) =>
  mknode("D0Psqarg", l3(tbeg, s0as, tend))
| D0Pparen(tbeg, d0ps, tend) =>
  mknode("D0Pparen", l3(tbeg, d0ps, tend))
| D0Ptuple(tbeg, topt, d0ps, tend) =>
  mknode("D0Pparen", l4(tbeg, topt, d0ps, tend))
| D0Precord(tbeg, topt, ld0ps, tend) =>
  mknode("D0Precord", l4(tbeg, topt, ld0ps, tend))
| D0Panno(d0p, ann) =>
  mknode("D0Panno", l2(d0p, ann))
| D0Pqual(tok, d0p) =>
  mknode("D0Pqual", l2(tok, d0p))
| D0Pnone(tok) =>
  mknode("D0Pnone", jsonize(tok))
)
end
*)
(*
node("d0pat_node", res) where
val res =
(
case+ x0.node() of
| D0Pid(id) =>
  (* jsonify("D0Pid", jsonize(id)) *)
  j1("D0Pid", id)
| D0Pint(i0) =>
  jsonify("D0Pint", jsonize(i0))
| D0Pchr(c0) =>
  jsonify("D0Pchr", jsonize(c0))
| D0Pflt(f0) =>
  jsonify("D0Pflt", jsonize(f0))
| D0Pstr(s0) =>
  jsonify("D0Pstr", jsonize(s0))
| D0Papps(d0ps) =>
  jsonify("D0Papps",
    jsonize(d0ps) // jsonize_list<d0pat>("d0patlst", d0ps)
  )
| D0Psqarg(tbeg, s0as, tend) =>
  jsonify("D0Psqarg",
    jsonize(tbeg),
    jsonize(s0as), // jsonize_list<s0arg>("s0arglst", s0as),
    jsonize(tend)
  )
| D0Pparen(tbeg, d0ps, tend) =>
  jsonify("D0Pparen",
    jsonize(tbeg),
    jsonize(d0ps), (* jsonize_list<d0pat>("d0patlst", d0ps), *)
    jsonize(tend)
  )
| D0Ptuple(tbeg, topt, d0ps, tend) =>
  jsonify("D0Ptuple",
    jsonize(tbeg),
    jsonize(topt), (* jsonize_option<token>("tokenopt", topt), *)
    jsonize(d0ps), (* jsonize_list<d0pat>("d0patlst", d0ps), *)
    jsonize(tend)
  )
| D0Precord(tbeg, topt, ld0ps, tend) =>
  jsonify("D0Precord",
    jsonize(tbeg),
    jsonize(topt), (* jsonize_option<token>("tokenopt", topt), *)
    jsonize(ld0ps), (* jsonize_list<dl0abeled(d0pat)>("labd0patlst", ld0ps), *)
    jsonize(tend)
  )
| D0Panno(d0p, ann) =>
  jsonify("D0Panno",
    jsonize(d0p),
    jsonize(ann)
  )
| D0Pqual(tok, d0p) =>
  jsonify("D0Pqual",
    jsonize(tok),
    jsonize(d0p)
  )
| D0Pnone(tok) =>
  jsonify("D0Pnone", jsonize(tok))
) : labjsonval
end
*)

end // end of [local]


local

  implement
  jsonize_val<d0pat> = jsonize_d0pat

in (* in-of-local *)

implement
jsonize_d0pat_RPAREN
  (x0) =
node("d0pat_RPAREN", res) where
val res =
(
case+ x0 of
| d0pat_RPAREN_cons0(tok) =>
  jsonify("d0pat_RPAREN_cons0", jsonize(tok))
| d0pat_RPAREN_cons1(tok1, d0ps, tok2) =>
  jsonify("d0pat_RPAREN_cons1",
    jsonize(tok1),
    jsonize(d0ps), (* jsonize_list<d0pat>("d0patlst", d0ps), *)
    jsonize(tok2)
  )
) : labjsonval
end

end // end of [local]


local

  implement
  jsonize_val<d0pat> = jsonize_d0pat

in (* in-of-local *)

implement
jsonize_labd0pat_RBRACE
  (x0) =
node("labd0pat_RBRACE", res) where
val res =
(
case+ x0 of
| labd0pat_RBRACE_cons0(tok) =>
  jsonify("labd0pat_RBRACE_cons0", jsonize(tok))
| labd0pat_RBRACE_cons1(tok1, ld0ps, tok2) =>
  jsonify("labd0pat_RBRACE_cons1",
    jsonize(tok1),
    jsonize(ld0ps), (* jsonize_list<dl0abeled(d0pat)>("labd0patlst", ld0ps), *)
    jsonize(tok2)
  )
) : labjsonval
end

end // end of [local]


implement
jsonize_d0clau
  (x0) =
node("d0clau_node", res) where
val res =
(
case+
x0.node() of
| D0CLAUgpat(d0gp) =>
  jsonify("D0CLAUgpat", jsonize(d0gp))
| D0CLAUclau(d0gp, tok, d0e0) =>
  jsonify("D0CLAUclau",
    jsonize(d0gp),
    jsonize(tok),
    jsonize(d0e0)
  )
) : labjsonval
end (* end of [jsonize_d0clau] *)


implement
jsonize_d0gpat
  (x0) =
node("d0gpat_node", res) where
val res =
(
case+
x0.node() of
| D0GPATpat(d0p) =>
  jsonify("D0GPATpat", jsonize(d0p))
| D0GPATgua(d0p, tok, d0gs) =>
  jsonify("D0GPATgua",
    jsonize(d0p),
    jsonize(tok),
    jsonize(d0gs) (* jsonize_list<d0gua>("d0gualst", d0gs) *)
  )
) : labjsonval
end (* end of [jsonize_d0gpat] *)


implement
jsonize_d0gua
  (x0) =
node("d0gua_node", res) where
val res =
(
case+
x0.node() of
| D0GUAexp(d0e) =>
  jsonify("D0GUAexp", jsonize(d0e))
| D0GUAmat(d0e, tok, d0p) =>
  jsonify("D0GUAexp",
    jsonize(d0e),
    jsonize(tok),
    jsonize(d0p)
  )
) : labjsonval
end (* end of [jsonize_d0gua] *)


local

  implement
  jsonize_val<d0exp> = jsonize_d0exp
  implement
  jsonize_val<d0clau> = jsonize_d0clau
  implement
  jsonize_val<s0exp> = jsonize_s0exp
  implement
  jsonize_val<d0ecl> = jsonize_d0ecl
  implement
  jsonize_val<f0arg> = jsonize_f0arg

  implement
  jsonize_val<dl0abeled(d0exp)> = jsonize_dl0abeled<d0exp>

(*
  #define ji jsonize
  macdef jl(nm,x,y,z) =
  (,(nm), JSONlablist($list{labjsonval}(ji(,(x)), ji(,(y)),ji(,(z))))) : labjsonval
*)

in (* in-of-local *)

implement
jsonize_d0exp
  (x0) =
node("d0exp_node", res) where
val res =
(
case+ x0.node() of
//
| D0Eid(id) =>
  jsonify("D0Eid", jsonize(id))
//
| D0Eint(i0) =>
  jsonify("D0Eint", jsonize(i0))
| D0Echr(c0) =>
  jsonify("D0Echr", jsonize(c0))
| D0Eflt(f0) =>
  jsonify("D0Eflt", jsonize(f0))
| D0Estr(s0) =>
  jsonify("D0Estr", jsonize(s0))
//
| D0Eapps(d0es) =>
  jsonify("D0Eapps", jsonize(d0es))
//
| D0Esqarg(tbeg, s0es, tend) =>
  (* jsonify("D0Esqarg", jsonize(tbeg), jsonize(s0es), jsonize(tend)) *)
  j3("D0Esqarg", tbeg, s0es, tend)
| D0Etqarg(tbeg, s0es, tend) =>
  jsonify("D0Etqarg", jsonize(tbeg), jsonize(s0es), jsonize(tend))
//
| D0Eparen(tbeg, d0es, tend) =>
  jsonify("D0Eparen", jsonize(tbeg), jsonize(d0es), jsonize(tend))
//
| D0Etuple(tbeg, topt, d0es, tend) =>
  jsonify("D0Etuple",
    jsonize(tbeg),
    jsonize(topt),
    jsonize(d0es),
    jsonize(tend)
  )
| D0Erecord(tbeg, topt, ld0es, tend) =>
  jsonify("D0Erecord",
    jsonize(tbeg),
    jsonize(topt),
    jsonize(ld0es),
    jsonize(tend)
  )
//
| D0Eif0(tif0, d0e1, d0e2, d0e3, tend) =>
  jsonify("D0Eif0",
    jsonize(tif0),
    jsonize(d0e1),
    jsonize(d0e2),
    jsonize(d0e3),
    jsonize(tend)
  )
//
| D0Ecase(tok0, d0e1, tof2, tbar, d0cs, tend) =>
  jsonify("D0Ecase",
    jsonize(tok0),
    jsonize(d0e1),
    jsonize(tof2),
    jsonize(tbar),
    jsonize(d0cs),
    jsonize(tend)
  )
//
| D0Elet(tok0, d0cs, topt, d0es, tok2) =>
  jsonify("D0Elet",
    jsonize(tok0),
    jsonize(d0cs),
    jsonize(topt),
    jsonize(d0es),
    jsonize(tok2)
  )
//
| D0Ewhere(d0e1, d0cs) =>
  jsonify("D0Ewhere", jsonize(d0e1), jsonize(d0cs))
| D0Ebrack(tbeg, d0es, tend) =>
  jsonify("D0Ebrack", jsonize(tbeg), jsonize(d0es), jsonize(tend))
| D0Edtsel(tdot, lab1, arg2) =>
  jsonify("D0Edtsel", jsonize(tdot), jsonize(lab1), jsonize(arg2)
  )
//
| D0Elam(tok0, arg1, res2, farrw, fbody, tend) =>
  jsonify("D0Elam",
    jsonize(tok0),
    jsonize(arg1),
    jsonize(res2),
    jsonize(farrw),
    jsonize(fbody),
    jsonize(tend)
  )
| D0Efix(tok0, fid0, arg1, res2, farrw, fbody, tend) =>
  jsonify("D0Efix",
    jsonize(tok0),
    jsonize(fid0),
    jsonize(arg1),
    jsonize(res2),
    jsonize(farrw),
    jsonize(fbody),
    jsonize(tend)
  )
//
| D0Eanno(d0e, ann) =>
  jsonify("D0Eanno", jsonize(d0e), jsonize(ann))
| D0Equal(tok, d0e) =>
  jsonify("D0Equal", jsonize(tok), jsonize(d0e))
| D0Enone(tok) =>
  jsonify("D0Enone", jsonize(tok))
//
) : labjsonval  (* end of [jsonize_d0exp] *)
end

end // end of [local]


local

  implement
  jsonize_val<d0exp> = jsonize_d0exp

in (* in-of-local *)

implement
jsonize_d0exp_RPAREN
  (x0) =
node("d0exp_RPAREN", res) where
val res =
(
case+ x0 of
| d0exp_RPAREN_cons0(tok) =>
  jsonify("d0exp_RPAREN_cons0", jsonize(tok))
| d0exp_RPAREN_cons1(tok1, d0es, tok2) =>
  jsonify("d0exp_RPAREN_cons1",
    jsonize(tok1),
    jsonize(d0es), (* jsonize_list<d0exp>("d0explst", d0es), *)
    jsonize(tok2)
  )
| d0exp_RPAREN_cons2(tok1, d0es, tok2) =>
  jsonify("d0exp_RPAREN_cons2",
    jsonize(tok1),
    jsonize(d0es), (* jsonize_list<d0exp>("d0explst", d0es), *)
    jsonize(tok2)
  )
) : labjsonval
end

end // end of [local]


local

  implement
  jsonize_val<d0exp> = jsonize_d0exp
  implement
  jsonize_val<dl0abeled(d0exp)> = jsonize_dl0abeled<d0exp>

in (* in-of-local *)

implement
jsonize_labd0exp_RBRACE
  (x0) =
node("labd0exp_RBRACE", res) where
val res =
(
case+ x0 of
| labd0exp_RBRACE_cons0(tok) =>
  jsonify("labd0exp_RBRACE_cons0", jsonize(tok))
| labd0exp_RBRACE_cons1(tok1, ld0es, tok2) =>
  jsonify("labd0exp_RBRACE_cons1",
    jsonize(tok1),
    jsonize(ld0es), (* jsonize_list<dl0abeled(d0exp)>("labd0explst", ld0es), *)
    jsonize(tok2)
  )
) : labjsonval
end

end // end of [local]


implement
jsonize_d0exp_THEN(x0) =
node("d0exp_THEN", res) where
val res =
(
case+ x0 of
| d0exp_THEN(tok, d0e) =>
  jsonify("d0exp_THEN", jsonize(tok), jsonize(d0e))
) : labjsonval
end


implement
jsonize_d0exp_ELSE(x0) =
node("d0exp_ELSE", res) where
val res =
(
case+ x0 of
| d0exp_ELSEnone() =>
  jsonify("d0exp_ELSEnone")
| d0exp_ELSEsome(tok, d0e) =>
  jsonify("d0exp_ELSEsome", jsonize(tok), jsonize(d0e))
) : labjsonval
end


implement
jsonize_endwhere(x0) =
node("endwhere", res) where
val res =
(
case+ x0 of
| endwhere_cons1(tok) =>
  jsonify("endwhere_cons1", jsonize(tok))
| endwhere_cons2(tok1, opt2) =>
  jsonify("endwhere_cons2", jsonize(tok1), jsonize(opt2))
) : labjsonval
end


implement
jsonize_d0eclseq_WHERE(x0) =
node("d0eclseq_WHERE", res) where
val res =
(
case+ x0 of
| d0eclseq_WHERE
  (tok0, opt1, d0cs, opt2) =>
  jsonify("d0eclseq_WHERE",
    jsonize(tok0),
    jsonize(opt1),
    jsonize(d0cs),
    jsonize(opt2)
  )
) : labjsonval
end


implement
jsonize_f0unarrow(x0) =
node("f0unarrow", res) where
val res =
(
case+ x0 of
| F0UNARROWnone(tok) =>
  jsonify("F0UNARROWnone", jsonize(tok))
| F0UNARROWdflt(tok) =>
  jsonify("F0UNARROWdflt", jsonize(tok))
| F0UNARROWlist(tbeg, s0es, tend) =>
  jsonify("F0UNARROWlist", jsonize(tbeg), jsonize(s0es), jsonize(tend))
) : labjsonval
end


implement
jsonize_decmodopt(x0) =
node("decmodopt", res) where
val res =
(
case+ x0 of
//
| DECMODnone() =>
  jsonify("DECMODnone")
| DECMODsing(tok, id0) =>
  jsonify("DECMODsing", jsonize(tok), jsonize(id0))
| DECMODlist(tok, tbeg, ids, tend) =>
  jsonify("DECMODlist",
    jsonize(tok),
    jsonize(tbeg),
    jsonize(ids),
    jsonize(tend)
  )
) : labjsonval
end


implement
jsonize_teqd0expopt(x0) =
node("teqd0expopt", res) where
val res =
(
case+ x0 of
| TEQD0EXPnone() =>
  jsonify("TEQD0EXPnone")
| TEQD0EXPsome(tok, d0e) =>
  jsonify("TEQD0EXPsome", jsonize(tok), jsonize(d0e))
) : labjsonval
end


implement
jsonize_wths0expopt(x0) =
node("wths0expopt", res) where
val res =
(
case+ x0 of
| WTHS0EXPnone() =>
  jsonify("WTHS0EXPnone")
| WTHS0EXPsome(tok, d0e) =>
  jsonify("WTHS0EXPsome", jsonize(tok), jsonize(d0e))
) : labjsonval
end


local

  implement
  jsonize_val<d0ecl> = jsonize_d0ecl
  implement
  jsonize_val<g0marg> = jsonize_g0marg
  implement
  jsonize_val<v0aldecl> = jsonize_v0aldecl
  implement
  jsonize_val<v0ardecl> = jsonize_v0ardecl
  implement
  jsonize_val<f0undecl> = jsonize_f0undecl
  implement
  jsonize_val<d0cstdecl> = jsonize_d0cstdecl
  implement
  jsonize_val<i0dnt> = jsonize_i0dnt

  implement
  jsonize_val<d0tsort> = jsonize_d0tsort
  implement
  jsonize_val<d0atype> = jsonize_d0atype

  implement
  jsonize_val<t0int> = jsonize_t0int

in (* in-of-local *)

fun name_d0ecl(x:d0ecl_node): string =
(
case+ x of
| D0Cnone _ => "D0Cnone"
| D0Ctokerr _ => "D0Ctokerr"
| D0Cnonfix _ => "D0Cnonfix"
| D0Cfixity _ => "D0Cfixity"
| D0Cstatic _ => "D0Cstatic"
| D0Cextern _ => "D0Cextern"
| D0Cdefine _ => "D0Cdefine"
| D0Cmacdef _ => "D0Cmacdef"
| D0Cinclude _ => "D0Cinclude"
| D0Cstaload _ => "D0Cstaload"
(*
| D0Cdynload _ => "D0Cdynload"
*)
| D0Cabssort _ => "D0Cabssort"
| D0Cstacst0 _ => "D0Cstacst0"
| D0Csortdef _ => "D0Csortdef"
| D0Csexpdef _ => "D0Csexpdef"
| D0Cabstype _ => "D0Cabstype"
| D0Cabsimpl _ => "D0Cabsimpl"
| D0Cvaldecl _ => "D0Cvaldecl"
| D0Cvardecl _ => "D0Cvardecl"
| D0Cfundecl _ => "D0Cfundecl"
| D0Cimpdecl _ => "D0Cimpdecl"
| D0Csymload _ => "D0Csymload"
| D0Cdatasort _ => "D0Cdatasort"
| D0Cdatatype _ => "D0Cdatatype"
| D0Cdynconst _ => "D0Cdynconst"
| D0Clocal _ => "D0Clocal"
)


fun args_d0ecl(x:d0ecl_node): List0(string) =
(
case+ x of
| D0Cnone(tok) =>
  $list{string}("tok")
| D0Ctokerr(tok) =>
  $list{string}("tok")
| D0Cnonfix(tok, ids) =>
  $list{string}("tok", "ids")
| D0Cfixity(tok, ids, opt) =>
  $list{string}("tok", "ids", "opt")
| D0Cstatic(tok, d0c) =>
  $list{string}("tok", "d0c")
| D0Cextern(tok, d0c) =>
  $list{string}("tok", "d0c")
| D0Cdefine(tok, gid, gmas, gdef) =>
  $list{string}("tok", "gid", "gmas", "gdef")
| D0Cmacdef(tok, gid, gmas, mdef) =>
  $list{string}("tok", "gid", "gmas", "mdef")
| D0Cinclude(tok, d0e) =>
  $list{string}("tok", "d0e")
| D0Cstaload(tok, d0e) =>
  $list{string}("tok", "d0e")
(*
| D0Cdynload(tok, d0e) =>
  $list{string}(tok, d0e)
*)
| D0Cabssort(tok, tid) =>
  $list{string}("tok", "tid")
| D0Cstacst0(tok, sid, tmas, tok1, s0t2) =>
  $list{string}("tok", "sid", "tmas", "tok1", "s0t2")
| D0Csortdef(tok, tid, tok1, def2) =>
  $list{string}("tok", "tid", "tok1", "def2")
| D0Csexpdef(tok, sid, arg, res, tok1, tdef) =>
  $list{string}("tok", "sid", "arg", "res", "tok1", "tdef")
| D0Cabstype(tok, sid, arg, res, tdef) =>
  $list{string}("tok", "sid", "arg", "res", "tdef")
| D0Cabsimpl(tok, sqid, smas, res0, teq1, def2) =>
  $list{string}("tok", "sqid", "smas", "res0", "teq1", "def2")
| D0Cvaldecl(tok, mopt, d0cs) =>
  $list{string}("tok", "mopt", "d0cs")
| D0Cvardecl(tok, mopt, d0cs) =>
  $list{string}("tok", "mopt", "d0cs")
| D0Cfundecl(tok, mopt, tqas, d0cs) =>
  $list{string}("tok", "mopt", "tqas", "d0cs")
| D0Cimpdecl(tok, mopt, sqas, tqas, dqid, tias, f0as, res0, teq1, d0e2) =>
  $list{string}("tok", "mopt", "sqas", "tqas", "dqid",
    "tias", "f0as", "res0", "teq1", "d0e2")
| D0Csymload(tok, sym, twth, dqid, tint) =>
  $list{string}("tok", "sym", "twth", "dqid", "tint")
| D0Cdatasort(tok, d0cs) =>
  $list{string}("tok", "d0cs")
| D0Cdatatype(tok, d0cs, wopt) =>
  $list{string}("tok", "d0cs", "wopt")
| D0Cdynconst(tok, tqas, d0cs) =>
  $list{string}("tok", "tqas", "d0cs")
| D0Clocal(tbeg, d0cs0, topt, d0cs1, tend) =>
  $list{string}("tbeg", "d0cs0", "topt", "d0cs1", "tend")
)

fun jlst_d0ecl(x:d0ecl_node): List0(jsonval) =
(
case+ x of
| D0Cnone(tok) =>
  jlst1(tok)
| D0Ctokerr(tok) =>
  jlst1(tok)
| D0Cnonfix(tok, ids) =>
  jlst2(tok, ids)
| D0Cfixity(tok, ids, opt) =>
  jlst3(tok, ids, opt)
| D0Cstatic(tok, d0c) =>
  jlst2(tok, d0c)
| D0Cextern(tok, d0c) =>
  jlst2(tok, d0c)
| D0Cdefine(tok, gid, gmas, gdef) =>
  jlst4(tok, gid, gmas, gdef)
| D0Cmacdef(tok, gid, gmas, mdef) =>
  jlst4(tok, gid, gmas, mdef)
| D0Cinclude(tok, d0e) =>
  jlst2(tok, d0e)
| D0Cstaload(tok, d0e) =>
  jlst2(tok, d0e)
(*
| D0Cdynload(tok, d0e) =>
  jlst2(tok, d0e)
*)
| D0Cabssort(tok, tid) =>
  jlst2(tok, tid)
| D0Cstacst0(tok, sid, tmas, tok1, s0t2) =>
  jlst5(tok, sid, tmas, tok1, s0t2)
| D0Csortdef(tok, tid, tok1, def2) =>
  jlst4(tok, tid, tok1, def2)
| D0Csexpdef(tok, sid, arg, res, tok1, tdef) =>
  jlst6(tok, sid, arg, res, tok1, tdef)
| D0Cabstype(tok, sid, arg, res, tdef) =>
  jlst5(tok, sid, arg, res, tdef)
| D0Cabsimpl(tok, sqid, smas, res0, teq1, def2) =>
  jlst6(tok, sqid, smas, res0, teq1, def2)
| D0Cvaldecl(tok, mopt, d0cs) =>
  jlst3(tok, mopt, d0cs)
| D0Cvardecl(tok, mopt, d0cs) =>
  jlst3(tok, mopt, d0cs)
| D0Cfundecl(tok, mopt, tqas, d0cs) =>
  jlst4(tok, mopt, tqas, d0cs)
| D0Cimpdecl(tok, mopt, sqas, tqas, dqid, tias, f0as, res0, teq1, d0e2) =>
  jlst10(tok, mopt, sqas, tqas, dqid, tias, f0as, res0, teq1, d0e2)
| D0Csymload(tok, sym, twth, dqid, tint) =>
  jlst5(tok, sym, twth, dqid, tint)
| D0Cdatasort(tok, d0cs) =>
  jlst2(tok, d0cs)
| D0Cdatatype(tok, d0cs, wopt) =>
  jlst3(tok, d0cs, wopt)
| D0Cdynconst(tok, tqas, d0cs) =>
  jlst3(tok, tqas, d0cs)
| D0Clocal(tbeg, d0cs0, topt, d0cs1, tend) =>
  jlst5(tbeg, d0cs0, topt, d0cs1, tend)
)

implement
jsonize_d0ecl
  (x0) =
("d0ecl_node", mknode(name, data)) : labjsonval
where
val name = name_d0ecl(x0.node())
val args = args_d0ecl(x0.node())
val lsts = jlst_d0ecl(x0.node())
val data = arg_lablist(args, lsts)
end
(*
val name = name_d0ecl(x0.node())
val data =
(
case+ x0.node() of
| D0Cnone(tok) => jval(tok)
| D0Ctokerr(tok) => jval(tok)
| D0Cnonfix(tok, ids) => l2(tok, ids)
| D0Cfixity(tok, ids, opt) => l3(tok, ids, opt)
| D0Cstatic(tok, d0c) => l2(tok, d0c)
| D0Cextern(tok, d0c) => l2(tok, d0c)
| D0Cdefine(tok, gid, gmas, gdef) => l4(tok, gid, gmas, gdef)
| D0Cmacdef(tok, gid, gmas, mdef) => l4(tok, gid, gmas, mdef)
| D0Cinclude(tok, d0e) => l2(tok, d0e)
| D0Cstaload(tok, d0e) => l2(tok, d0e)
(*
| D0Cdynload(tok, d0e) =>
  l2(tok, d0e)
*)
| D0Cabssort(tok, tid) => l2(tok, tid)
| D0Cstacst0(tok, sid, tmas, tok1, s0t2) =>
  l5(tok, sid, tmas, tok1, s0t2)
| D0Csortdef(tok, tid, tok1, def2) =>
  l4(tok, tid, tok1, def2)
| D0Csexpdef(tok, sid, arg, res, tok1, tdef) =>
  l6(tok, sid, arg, res, tok1, tdef)
| D0Cabstype(tok, sid, arg, res, tdef) =>
  l5(tok, sid, arg, res, tdef)
| D0Cabsimpl(tok, sqid, smas, res0, teq1, def2) =>
  l6(tok, sqid, smas, res0, teq1, def2)
| D0Cvaldecl(tok, mopt, d0cs) =>
  l3(tok, mopt, d0cs)
| D0Cvardecl(tok, mopt, d0cs) =>
  l3(tok, mopt, d0cs)
| D0Cfundecl(tok, mopt, tqas, d0cs) =>
  l4(tok, mopt, tqas, d0cs)
| D0Cimpdecl(tok, mopt, sqas, tqas, dqid, tias, f0as, res0, teq1, d0e2) =>
  l10(tok, mopt, sqas, tqas, dqid, tias, f0as, res0, teq1, d0e2)
| D0Csymload(tok, sym, twth, dqid, tint) =>
  l5(tok, sym, twth, dqid, tint)
| D0Cdatasort(tok, d0cs) =>
  l2(tok, d0cs)
| D0Cdatatype(tok, d0cs, wopt) =>
  l3(tok, d0cs, wopt)
| D0Cdynconst(tok, tqas, d0cs) =>
  l3(tok, tqas, d0cs)
| D0Clocal(tbeg, d0cs0, topt, d0cs1, tend) =>
  l5(tbeg, d0cs0, topt, d0cs1, tend)
)
: jsonval
end
*)


(*
implement
jsonize_d0ecl
  (x0) =
node("d0ecl_node", res) where
val res =
(
case+ x0.node() of
//
| D0Cnone(tok) =>
  jsonify("D0Cnone", jsonize(tok))
//
| D0Ctokerr(tok) =>
  jsonify("D0Ctokerr", jsonize(tok))
//
| D0Cnonfix(tok, ids) =>
  jsonify("D0Cnonfix", jsonize(tok), jsonize(ids))
| D0Cfixity(tok, ids, opt) =>
  jsonify("D0Cfixity", jsonize(tok), jsonize(ids), jsonize(opt))
//
| D0Cstatic(tok, d0c) =>
  jsonify("D0Cstatic", jsonize(tok), jsonize(d0c))
| D0Cextern(tok, d0c) =>
  jsonify("D0Cextern", jsonize(tok), jsonize(d0c))
//
| D0Cdefine(tok, gid, gmas, gdef) =>
  jsonify("D0Cdefine",
    jsonize(tok),
    jsonize(gid),
    jsonize(gmas),
    jsonize(gdef)
  )
//
| D0Cmacdef(tok, gid, gmas, mdef) =>
  jsonify("D0Cmacdef",
    jsonize(tok),
    jsonize(gid),
    jsonize(gmas),
    jsonize(mdef)
  )
//
| D0Cinclude(tok, d0e) =>
  jsonify("D0Cinclude", jsonize(tok), jsonize(d0e)
  )
//
| D0Cstaload(tok, d0e) =>
  jsonify("D0Cstaload", jsonize(tok), jsonize(d0e))
(*
| D0Cdynload(tok, d0e) =>
  jsonify("D0Cdynload", tok, d0e)
*)
//
| D0Cabssort(tok, tid) =>
  jsonify("D0Cabssort", jsonize(tok), jsonize(tid)
  )
//
| D0Cstacst0(tok, sid, tmas, tok1, s0t2) =>
  jsonify("D0Cstacst0",
    jsonize(tok),
    jsonize(sid),
    jsonize(tmas),
    jsonize(tok1),
    jsonize(s0t2)
  )
//
| D0Csortdef(tok, tid, tok1, def2) =>
  jsonify("D0Csortdef",
    jsonize(tok),
    jsonize(tid),
    jsonize(tok1),
    jsonize(def2)
  )
| D0Csexpdef(tok, sid, arg, res, tok1, tdef) =>
  jsonify("D0Csexpdef",
    jsonize(tok),
    jsonize(sid),
    jsonize(arg),
    jsonize(res),
    jsonize(tok1),
    jsonize(tdef)
  )
//
| D0Cabstype(tok, sid, arg, res, tdef) =>
  jsonify("D0Cabstype",
    jsonize(tok),
    jsonize(sid),
    jsonize(arg),
    jsonize(res),
    jsonize(tdef)
  )
//
| D0Cabsimpl(tok, sqid, smas, res0, teq1, def2) =>
  jsonify("D0Cabsimpl",
    jsonize(tok),
    jsonize(sqid),
    jsonize(smas),
    jsonize(res0),
    jsonize(teq1),
    jsonize(def2)
  )
//
| D0Cvaldecl(tok, mopt, d0cs) =>
  jsonify("D0Cvaldecl", jsonize(tok), jsonize(mopt), jsonize(d0cs))
//
| D0Cvardecl(tok, mopt, d0cs) =>
  jsonify("D0Cvardecl", jsonize(tok), jsonize(mopt), jsonize(d0cs))
//
| D0Cfundecl(tok, mopt, tqas, d0cs) =>
  jsonify("D0Cfundecl",
    jsonize(tok),
    jsonize(mopt),
    jsonize(tqas),
    jsonize(d0cs)
  )
//
| D0Cimpdecl
  (tok, mopt, sqas, tqas, dqid, tias, f0as, res0, teq1, d0e2) =>
  jsonify("D0Cimpdecl",
    jsonize(tok),
    jsonize(mopt),
    jsonize(sqas),
    jsonize(tqas),
    jsonize(dqid),
    jsonize(tias),
    jsonize(f0as),
    jsonize(res0),
    jsonize(teq1),
    jsonize(d0e2)
  )
//
| D0Csymload(tok, sym, twth, dqid, tint) =>
  jsonify("D0Csymload",
    jsonize(tok),
    jsonize(sym),
    jsonize(twth),
    jsonize(dqid),
    jsonize(tint)
  )
//
| D0Cdatasort(tok, d0cs) =>
  jsonify("D0Cdatasort", jsonize(tok), jsonize(d0cs))
//
| D0Cdatatype(tok, d0cs, wopt) =>
  jsonify("D0Cdatatype", jsonize(tok), jsonize(d0cs), jsonize(wopt))
//
| D0Cdynconst(tok, tqas, d0cs) =>
  jsonify("D0Cdynconst", jsonize(tok), jsonize(tqas), jsonize(d0cs))
//
| D0Clocal(tbeg, d0cs0, topt, d0cs1, tend) =>
  jsonify("D0Clocal",
    jsonize(tbeg),
    jsonize(d0cs0),
    jsonize(topt),
    jsonize(d0cs1),
    jsonize(tend)
  )
//
(*
| _(*rest-of-d1ecl*) =>
    jsonify("jsonize_d1ecl: D0C...: not-yet-implemented")
*)
//
) : labjsonval  (* end of [jsonize_d0ecl] *)
end
*)

end // end of [local]


implement
jsonize_precopt(x0) =
node("precopt", res) where
val res =
(
case+ x0 of
| PRECOPTnil() =>
  jsonify("PRECOPTnil")
| PRECOPTint(tint) =>
  jsonify("PRECOPTint", jsonize(tint))
| PRECOPTopr(topr, pmod) =>
  jsonify("PRECOPTopr", jsonize(topr), jsonize(pmod))
) : labjsonval
end


implement
jsonize_signint
  (x0) =
node("signint", res) where
val res =
(
case+ x0 of
| SIGNINTint(tint) =>
  jsonify("SIGNINTint", jsonize(tint))
| SIGNINTopr(topr, tint) =>
  jsonify("SIGNINTopr", jsonize(topr), jsonize(tint))
) : labjsonval
end


implement
jsonize_precmod
  (x0) =
node("precmod", res) where
val res =
(
case+ x0 of
| PRECMODnone() =>
  jsonify("PRECMODnone")
| PRECMODsome(tbeg, sint, tend) =>
  jsonify("PRECMODsome", jsonize(tbeg), jsonize(sint), jsonize(tend))
) : labjsonval
end


implement
jsonize_abstdf0
  (x0) =
node("abstdf0", res) where
val res =
(
case+ x0 of
| ABSTDF0some() =>
  jsonify("ABSTDF0some")
| ABSTDF0lteq(tok, s0e) =>
  jsonify("ABSTDF0lteq", jsonize(tok), jsonize(s0e))
| ABSTDF0eqeq(tok, s0e) =>
  jsonify("ABSTDF0eqeq", jsonize(tok), jsonize(s0e))
) : labjsonval
end


implement
jsonize_g0expdef
  (x0) =
node("g0expdef", res) where
val res =
(
case+ x0 of
| G0EDEFnone() =>
  jsonify("G0EDEFnone")
| G0EDEFsome(topt, g0e1) =>
  jsonify("G0EDEFsome", jsonize(topt), jsonize(g0e1))
) : labjsonval
end


implement
jsonize_d0macdef
  (x0) =
node("d0macdef", res) where
val res =
(
case+ x0 of
| D0MDEFnone() =>
  jsonify("D0MDEFnone")
| D0MDEFsome(topt, d0e1) =>
  jsonify("D0MDEFsome", jsonize(topt), jsonize(d0e1))
) : labjsonval
end

implement
jsonize_wd0eclseq
  (x0) =
node("wd0eclseq", res) where
val res =
(
case+ x0 of
| WD0CSnone() =>
  jsonify("WD0CSnone")
| WD0CSsome(tbeg, topt, d0cs, tend) =>
  jsonify("WD0CSsome",
    jsonize(tbeg),
    jsonize(topt),
    jsonize(d0cs),
    jsonize(tend)
  )
) : labjsonval
end


implement
jsonize_v0aldecl
  (x0) = let
//
val+V0ALDECL(rcd) = x0
(* val _ = $showtype(rcd) *)
//
in
("v0aldecl", res) : labjsonval
where
val res =
  jsonval_labval4(
    "pat", jval(rcd.pat),
    "teq", jval(rcd.teq),
    "def", jval(rcd.def),
    "wtp", jval(rcd.wtp)
  )
end
(*
node("v0aldecl", res) where
val res =
  jsonify("V0ALDECL",
    jsonize(rcd.pat),
    jsonize(rcd.teq),
    jsonize(rcd.def),
    jsonize(rcd.wtp)
  ) : labjsonval
end
*)
end


implement
jsonize_v0ardecl
  (x0) = let
//
val+V0ARDECL(rcd) = x0
//
in
("v0ardecl", res) : labjsonval
where
val res =
  jsonval_labval4(
    "nam", jval(rcd.nam),
    "wth", jval(rcd.wth),
    "res", jval(rcd.res),
    "ini", jval(rcd.ini)
  )
end
(*
node("v0ardecl", res) where
val res =
  jsonify("V0ARDECL",
    jsonize(rcd.nam),
    jsonize(rcd.wth),
    jsonize(rcd.res),
    jsonize(rcd.ini)
  ) : labjsonval
end
*)
end // end of [jsonize_v0ardecl]


implement
jsonize_f0undecl
  (x0) = let
//
val+F0UNDECL(rcd) = x0
//
in
("f0undecl", res) : labjsonval
where
val res =
  jsonval_labval6(
    "nam", jval(rcd.nam),
    "arg", jval(rcd.arg),
    "res", jval(rcd.res),
    "teq", jval(rcd.teq),
    "def", jval(rcd.def),
    "wtp", jval(rcd.wtp)
  )
end
(*
node("f0undecl", res) where
val res =
  jsonify("F0UNDECL",
    jsonize(rcd.nam),
    jsonize(rcd.arg),
    jsonize(rcd.res),
    jsonize(rcd.teq),
    jsonize(rcd.def),
    jsonize(rcd.wtp)
  ) : labjsonval
end
*)
end


implement
jsonize_d0cstdecl
  (x0) = let
//
val+D0CSTDECL(rcd) = x0
//
in
("d0cstdecl", res) : labjsonval
where
val res =
  jsonval_labval4(
    "nam", jval(rcd.nam),
    "arg", jval(rcd.arg),
    "res", jval(rcd.res),
    "def", jval(rcd.def)
  )
end
(*
node("d0cstdecl", res) where
val res =
  jsonify("D0CSTDECL",
    jsonize(rcd.nam),
    jsonize(rcd.arg),
    jsonize(rcd.res),
    jsonize(rcd.def)
  ) : labjsonval
end
*)
end
