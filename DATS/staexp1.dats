#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/staexp0.sats"
#staload "{$x}/SATS/staexp1.sats"

#staload "./../SATS/json.sats"

#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/staexp1.sats"

#staload _ = "./json.dats"
#staload _ = "./lexing_token.dats"
#staload _ = "./staexp0.dats"

#staload SYM_J = "./../SATS/symbol.sats"
overload jsonize with $SYM_J.jsonize_symbol

implement jsonize_val<token> = jsonize_token
implement(a:type) jsonize_val<sl0abled(a)> = jsonize_sl0abled<a>

local

implement jsonize_val<g1marg> = jsonize_g1marg
implement jsonize_val<s1arg> = jsonize_s1arg
implement jsonize_val<s1exp> = jsonize_s1exp
implement jsonize_val<s1qua> = jsonize_s1qua
implement jsonize_val<s1uni> = jsonize_s1uni
implement jsonize_val<s1marg> = jsonize_s1marg
implement jsonize_val<t1arg> = jsonize_t1arg
implement jsonize_val<s1rtcon> = jsonize_s1rtcon
implement jsonize_val<d1atcon> = jsonize_d1atcon
implement jsonize_val<sort1> = jsonize_sort1
implement jsonize_val<g1exp> = jsonize_g1exp
implement jsonize_val<t1marg> = jsonize_t1marg
implement jsonize_val<s1exp> = jsonize_s1exp
implement jsonize_val<labs1exp> = jsonize_sl0abled<s1exp>

implement jsonize_val<d1tsort> = jsonize_d1tsort
implement jsonize_val<d1atype> = jsonize_d1atype

in

implement jsonize_g1marglst(x) = jsonize_list<g1marg>("g1marglst", x)

implement jsonize_s1arglst(x) = jsonize_list<s1arg>("s1arglst", x)
implement jsonize_s1explst(x) = jsonize_list<s1exp>("s1explst", x)
implement jsonize_s1qualst(x) = jsonize_list<s1qua>("s1qualst", x)
implement jsonize_s1unilst(x) = jsonize_list<s1uni>("s1unilst", x)
implement jsonize_s1marglst(x) = jsonize_list<s1marg>("s1marglst", x)
implement jsonize_t1arglst(x) = jsonize_list<t1arg>("t1arglst", x)
implement jsonize_s1rtconlst(x) = jsonize_list<s1rtcon>("s1rtconlst", x)
implement jsonize_d1atconlst(x) = jsonize_list<d1atcon>("d1atconlst", x)
implement jsonize_sort1opt(x) = jsonize_option<sort1>("sort1opt", x)

implement jsonize_g1explst(x) = jsonize_list<g1exp>("g1explst", x)
implement jsonize_g1expopt(x) = jsonize_option<g1exp>("g1expopt", x)

implement jsonize_d1tsortlst(x) = jsonize_list<d1tsort>("d1tsortlst", x)
implement jsonize_d1atypelst(x) = jsonize_list<d1atype>("d1atypelst", x)

implement jsonize_t1marglst(x) = jsonize_list<t1marg>("t1marglst", x)
implement jsonize_sort1lst(x) = jsonize_list<sort1>("sort1lst", x)
implement jsonize_s1expopt(x) = jsonize_option<s1exp>("s1expopt", x)

implement jsonize_val<s1exp> = jsonize_s1exp
implement jsonize_val<labs1exp> = jsonize_sl0abled<s1exp>
implement{} jsonize_labs1explst(x) = jsonize_list<labs1exp>("labs1explst", x)
(*
implement(a:type) jsonize_val<sl0abled(a)> = jsonize_sl0abled<a>
implement{} jsonize_labs1explst(x) = jsonize_list<labs1exp>("labs1explst", x)
*)

end



local

(*
implement
jsonize_val<g1exp> = jsonize_g1exp
*)

in (* in-of-local *)

implement
jsonize_g1exp
  (x0) =
node("g1exp", res) where
val res =
(
case+ x0.node() of
//
| G1Eid(tok) =>
  jsonify("G1Eid", jsonize(tok))
//
| G1Eint(int) =>
  jsonify("G1Eint", jsonize(int))
//
| G1Eapp() =>
  jsonify("G1Eapp")
//
| G1Eapp1
  (g1e0, g1e1) =>
  jsonify("G1Eapp1", jsonize(g1e0), jsonize(g1e1))
| G1Eapp2
  (g1e0, g1e1, g1e2) =>
  jsonify("G1Eapp2",
    jsonize(g1e0),
    jsonize(g1e1),
    jsonize(g1e2)
  )
//
| G1Elist(g1es) =>
  jsonify("G1Elist",
    jsonize(g1es) (* jsonize_list<g1exp>("g1explst", g1es) *)
  )
//
| G1Enone(loc) =>
  jsonify("G1Enone")
//
) (* end of [jsonize_g1exp] *)
end

end // end of [local]


local

(*
implement
jsonize_val<g1arg> = jsonize_token
*)

in(* in-of-local *)

implement
jsonize_g1marg
  (x0) =
node("g1marg", res) where
val res =
(
case+
x0.node() of
| G1MARGsarg(g1as) =>
  jsonify("G1MARGsarg",
    jsonize(g1as) (* jsonize_list<g1arg>("g1arglst", g1as) *)
  )
| G1MARGdarg(g1as) =>
  jsonify("G1MARGdarg",
    jsonize(g1as) (* jsonize_list<g1arg>("g1arglst", g1as) *)
  )
) (* end of [jsonize_g1marg] *)
end

end // end of [local]



local

(*
implement
jsonize_val<sort1> = jsonize_sort1
*)

in (* in-of-local *)

implement
jsonize_sort1
  (x0) =
node("sort1", res) where
val res =
(
case+ x0.node() of
//
| S1Tid(id) =>
  jsonify("S1Tid", jsonize(id))
//
| S1Tint(int) =>
  jsonify("S1Tapp", jsonize(int))
//
| S1Tapp() =>
  jsonify("S1Tapp")
//
(*
| S1Ttype(knd) =>
  jsonify("S1Ttype", jsonize(knd))
*)
//
(*
| S1Tapp(s1t0, s1ts) =>
  jsonify("S1Tapp", jsonize(s1t0), jsonize(s1ts))
*)
//
| S1Tapp1(s1t0, s1t1) =>
  jsonify("S1Tapp1", jsonize(s1t0), jsonize(s1t1))
| S1Tapp2(s1t0, s1t1, s1t2) =>
  jsonify("S1Tapp2",
    jsonize(s1t0),
    jsonize(s1t1),
    jsonize(s1t2)
  )
//
| S1Tlist(s1ts) =>
  jsonify("S1Tlist",
    jsonize(s1ts) (* jsonize_list<sort1>("sort1lst", s1ts) *)
  )
//
| S1Tqual(tok0, s1t1) =>
  jsonify("S1Tnone",
    jsonize(tok0),
    jsonize(s1t1)
  )
//
| S1Tnone((*void*)) =>
  jsonify("S1Tnone")
//
) (* end of [jsonize_sort1] *)
end

end // end of [local]


(*
implement
jsonize_val<sort1> = jsonize_sort1
implement
jsonize_val<s1rtcon> = jsonize_s1rtcon
*)


implement
jsonize_s1rtcon
  (x0) =
node("s1rtcon", res) where
val res =
(
case+ x0.node() of
| S1RTCON(sid, opt) =>
  jsonify("S1RTCON",
    jsonize(sid),
    jsonize(opt) (* jsonize_option<sort1>("sort1opt", opt) *)
  )
)
end (* end of [jsonize_s1rtcon] *)


implement
jsonize_d1tsort
  (x0) =
node("d1sort", res) where
val res =
(
case+ x0.node() of
| D1TSORT(tid, s1cs) =>
  jsonify("D1TSORT",
    jsonize(tid),
    jsonize(s1cs) (* jsonize_list<s1rtcon>("s1rtconlst", s1cs) *)
  )
)
end (* end of [jsonize_d1tsort] *)


implement
jsonize_s1rtdef
  (x0) =
node("s1rtdef", res) where
val res =
(
case+ x0.node() of
| S1RTDEFsort(s1t) =>
  jsonify("S1RTDEFsort",
    jsonize(s1t)
  )
| S1RTDEFsbst(s1a0, s1es) =>
  jsonify("S1RTDEFsbst(",
    jsonize(s1a0),
    jsonize(s1es) (* jsonize_list<s1exp>("s1explst", s1es) *)
  )
) (* end of [jsonize_s1rtdef] *)
end

implement
jsonize_s1arg
  (x0) =
node("s1arg", res) where
val res =
(
case+
x0.node() of
(*
| S1ARGnone() =>
  jsonify("S1ARGnone")
*)
| S1ARGsome(tok, opt) =>
  jsonify("S1ARGsome",
    jsonize(tok),
    jsonize(opt) (* jsonize_option<sort1>("sort1opt", opt) *)
  )
) (* jsonize_s1arg *)
end

local

(*
implement
jsonize_val<s1arg> = jsonize_s1arg
*)

in (* in-of-local *)

implement
jsonize_s1marg
  (x0) =
node("s1marg", res) where
val res =
(
case+
x0.node() of
(*
| S1MARGnone _ => ...
| S1MARGsing _ => ...
*)
| S1MARGlist(s1as) =>
  jsonify("S1MARGlist",
    jsonize(s1as) (* jsonize_list<s1arg>("s1arglst", s1as) *)
  )
) (* jsonize_s1marg *)
end

end // end of [local]


(*
implement jsonize_val<t1arg> = jsonize_t1arg
*)

implement
jsonize_t1arg
  (x0) =
node("t1arg", res) where
val res =
(
case+
x0.node() of
(*
| T1ARGnone() =>
  jsonify("T1ARGnone")
*)
| T1ARGsome(tok, opt) =>
  jsonify("T1ARGsome",
    jsonize(tok),
    jsonize(opt) (* jsonize_option<token>("tokenopt", opt) *)
  )
) (* jsonize_t1arg *)
end

local

(*
implement
jsonize_val<t1arg> = jsonize_t1arg
*)

in (* in-of-local *)

implement
jsonize_t1marg
  (x0) =
node("t1marg", res) where
val res =
(
case+
x0.node() of
(*
| T1MARGnone _ => ...
*)
| T1MARGlist(t1as) =>
  jsonify("T1MARGlist",
    jsonize(t1as) (* jsonize_list<t1arg>("t1arglst", t1as) *)
  )
) (* jsonize_t1marg *)
end

end // end of [local]


implement
jsonize_s1qua
  (x0) =
node("s1qua", res) where
val res =
(
case+ x0.node() of
| S1QUAprop(s1e) =>
  jsonify("S1QUAprop", jsonize(s1e))
| S1QUAvars(ids, opt) =>
  jsonify("S1QUAvars",
    jsonize(ids), (* jsonize_list<token>("tokenlst", ids), *)
    jsonize(opt) (* jsonize_option<sort1>("sort1opt", opt) *)
  )
)
end

implement
jsonize_val<s1qua> = jsonize_s1qua

implement
jsonize_s1uni
  (x0) =
node("s1uni", res) where
val res =
(
case+ x0.node() of
| S1UNIsome(s1qs) =>
  jsonify("S1UNIsome",
    jsonize(s1qs) (* jsonize_list<s1qua>("s1qualst", s1qs) *)
  )
)
end


local

(*
implement
jsonize_val<s1exp> = jsonize_s1exp
implement
jsonize_val<s1marg> = jsonize_s1marg
implement
jsonize_val<s1qua> = jsonize_s1qua
*)

in (* in-of-local *)

implement
jsonize_s1exp
  (x0) =
node("s1exp", res) where
val res =
(
case+ x0.node() of
//
| S1Eid(sid) =>
  jsonify("S1Eid", jsonize(sid))
//
| S1Eint(tok) =>
  jsonify("S1Eint", jsonize(tok))
| S1Echr(tok) =>
  jsonify("S1Echr", jsonize(tok))
| S1Eflt(tok) =>
  jsonify("S1Eflt", jsonize(tok))
| S1Estr(tok) =>
  jsonify("S1Estr", jsonize(tok))
//
| S1Eapp() =>
  jsonify("S1Eapp")
//
| S1Eapp1
  (s1e0, s1e1) =>
  jsonify("S1Eapp1", jsonize(s1e0), jsonize(s1e1))
| S1Eapp2
  (s1e0, s1e1, s1e2) =>
  jsonify("S1Eapp2",
    jsonize(s1e0),
    jsonize(s1e1),
    jsonize(s1e2)
  )
//
| S1Ebs0() =>
  jsonify("S1Ebs0")
| S1Ebs1(s1e) =>
  jsonify("S1Ebs1", jsonize(s1e))
//
| S1Eimp(s1es) =>
  jsonify("S1Eimp",
    jsonize(s1es) (* jsonize_list<s1exp>("s1explst", s1es) *)
  )
//
(*
| S1Eapp(s1e0, s1es) =>
  jsonify("S1Eimp", jsonize(s1e0), jsonize(s1es))
*)
//
| S1Elist(s1es) =>
  jsonify("S1Elist", jsonize_list<s1exp>("s1explst", s1es))
| S1Elist(s1es1, s1es2) =>
  jsonify("S1Elist",
    jsonize(s1es1), (* jsonize_list<s1exp>("s1explst", s1es1), *)
    jsonize(s1es2) (* jsonize_list<s1exp>("s1explst", s1es2) *)
  )
//
| S1Etuple(k0, s1es) =>
  jsonify("S1Etuple",
    jsonize(k0),
    jsonize(s1es) (* jsonize_list<s1exp>("s1explst", s1es) *)
  )
| S1Etuple(k0, s1es1, s1es2) =>
  jsonify("S1Etuple",
    jsonize(k0),
    jsonize(s1es1), (* jsonize_list<s1exp>("s1explst", s1es1), *)
    jsonize(s1es2) (* jsonize_list<s1exp>("s1explst", s1es2) *)
  )
//
| S1Erecord(k0, ls1es) =>
  jsonify("S1Erecord",
    jsonize(k0),
    jsonize(ls1es) (* jsonize_list<sl0abled(s1exp)>("labs1explst", ls1es) *)
  )
| S1Erecord(k0, ls1es1, ls1es2) =>
  jsonify("S1Erecord",
    jsonize(k0),
    jsonize(ls1es1), (* jsonize_list<sl0abled(s1exp)>("labs1explst", ls1es1), *)
    jsonize(ls1es2) (* jsonize_list<sl0abled(s1exp)>("labs1explst", ls1es2) *)
  )
//
| S1Eforall(s1qs) =>
  jsonify("S1Eforall",
    jsonize(s1qs) (* jsonize_list<s1qua>("s1qualst", s1qs) *)
  )
| S1Eexists(k0, s1qs) =>
  jsonify("S1Eexists",
    jsonize(k0),
    jsonize(s1qs) (* jsonize_list<s1qua>("s1qualst", s1qs) *)
  )
//
| S1Elam(arg, res, s1e) =>
  jsonify("S1Elam",
    jsonize(arg), (* jsonize_list<s1marg>("s1marglst", arg), *)
    jsonize(res), (* jsonize_option<sort1>("sort1opt", res), *)
    jsonize(s1e)
  )
//
| S1Eanno(s1e, s1t) =>
  jsonify("S1Eanno",
    jsonize(s1e),
    jsonize(s1t)
  )
//
| S1Equal(tok, s1e) =>
  jsonify("S1Equal",
    jsonize(tok),
    jsonize(s1e)
  )
//
| S1Enone(loc) =>
  jsonify("S1Enone", jsonize(loc))
//
) (* jsonize_s0exp *)
end

end // end of [local]


implement
jsonize_effs1expopt
  (x0) =
node("effs1expopt", res) where
val res =
(
case+ x0 of
| EFFS1EXPnone() =>
  jsonify("EFFS1EXPnone")
| EFFS1EXPsome(s1e) =>
  jsonify("EFFS1EXPsome", jsonize(s1e))
(*
| EFFS1EXPsome(s1f, s1e) =>
  jsonify("EFFS1EXPsome", jsonize(s1f), jsonize(s1e))
*)
) (* end of [jsonize_effs1expopt] *)
end


implement
jsonize_val<t1marg> = jsonize_t1marg
implement
jsonize_val<d1atcon> = jsonize_d1atcon
implement
jsonize_val<s1uni> = jsonize_s1uni

implement
jsonize_d1atype
  (x0) =
node("d1atype", res) where
val res =
(
case+ x0.node() of
| D1ATYPE(tok, arg, res, d1cs) =>
  jsonify("D1ATYPE",
    jsonize(tok),
    jsonize(arg), (* jsonize_list<t1marg>("t1marglst", arg), *)
    jsonize(res), (* jsonize_option<sort1>("sort1opt", res), *)
    jsonize(d1cs) (* jsonize_list<d1atcon>("d1atconlst", d1cs) *)
  )
) (* end of [jsonize_d1atype] *)
end

implement
jsonize_d1atcon
  (x0) =
node("d1atcon", res) where
val res =
(
case+ x0.node() of
| D1ATCON(s1us, tok, s1is, argopt) =>
  jsonify("D1ATCON",
    jsonize(s1us), (* jsonize_list<s1uni>("s1unilst", s1us), *)
    jsonize(tok),
    jsonize(s1is), (* jsonize_list<s1exp>("s1explst", s1is), *)
    jsonize(argopt) (* jsonize_option<s1exp>("s1expopt", argopt) *)
  )
) (* end of [jsonize_d1atcon] *)
end
