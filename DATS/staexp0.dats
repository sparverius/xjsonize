#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/staexp0.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/lexing.sats"

#staload "./json.dats"
#staload _ = "./json.dats"
#staload _ = "./lexing_token.dats"


implement jsonize_val<t0arg> = jsonize_t0arg
implement jsonize_val<i0dnt> = jsonize_i0dnt
implement jsonize_val<s0exp> = jsonize_s0exp
implement(a:type) jsonize_val<sl0abled(a)> = jsonize_sl0abled<a>

implement{} jsonize_labs0explst(x) = jsonize_list<labs0exp>("labs0explst", x)

implement jsonize_val<labs0explst> = jsonize_labs0explst
implement jsonize_val<t0marg> = jsonize_t0marg
implement jsonize_val<d0atcon> = jsonize_d0atcon

implement jsonize_val<s0rtcon> = jsonize_s0rtcon

implement jsonize_val<s0arg> = jsonize_s0arg
implement jsonize_val<s0exp> = jsonize_s0exp
implement jsonize_val<s0qua> = jsonize_s0qua
implement jsonize_val<sort0> = jsonize_sort0
implement jsonize_val<t0arg> = jsonize_t0arg
implement jsonize_val<s0uni> = jsonize_s0uni

implement jsonize_val<d0atype> = jsonize_d0atype
implement jsonize_val<s0marg> = jsonize_s0marg
implement jsonize_val<g0marg> = jsonize_g0marg
implement jsonize_val<t0int> = jsonize_t0int
implement jsonize_val<d0tsort> = jsonize_d0tsort
implement jsonize_val<d0atype> = jsonize_d0atype

implement jsonize_d0tsortlst(x) = jsonize_list<d0tsort>("d0tsortlst", x)
implement jsonize_d0atypelst(x) = jsonize_list<d0atype>("d0atypelst", x)
implement jsonize_s0arglst(x) = jsonize_list<s0arg>("s0arglst", x)
implement jsonize_s0explst(x) = jsonize_list<s0exp>("s0explst", x)
implement jsonize_s0qualst(x) = jsonize_list<s0qua>("s0qualst", x)
implement jsonize_s0unilst(x) = jsonize_list<s0uni>("s0unilst", x)

implement jsonize_s0marglst(x) = jsonize_list<s0marg>("s0marglst", x)

implement jsonize_t0arglst(x) = jsonize_list<t0arg>("t0arglst", x)

implement jsonize_s0rtconlst(x) = jsonize_list<s0rtcon>("s0rtconlst", x)

implement jsonize_d0atconlst(x) = jsonize_list<d0atcon>("d0atconlst", x)
implement jsonize_sort0opt(x) = jsonize_option<sort0>("sort0opt", x)

implement jsonize_val<g0exp> = jsonize_g0exp
implement jsonize_g0explst(x) = jsonize_list<g0exp>("g0explst", x)
implement jsonize_g0marglst(x) = jsonize_list<g0marg>("g0marglst", x)
implement jsonize_t0marglst(x) = jsonize_list<t0marg>("t0marglst", x)


implement jsonize_sort0lst(x) = jsonize_list<sort0>("sort0lst", x)
implement jsonize_i0dntlst(x) = jsonize_list<i0dnt>("i0dntlst", x)

implement jsonize_i0dntopt(x) = jsonize_option<i0dnt>("i0dntopt", x)
implement jsonize_s0expopt(x) = jsonize_option<s0exp>("s0expopt", x)
implement jsonize_t0intopt(x) = jsonize_option<t0int>("t0intopt", x)

implement
jsonize_val<token> = jsonize_token

#include "./mac.dats"

implement
jsonize_t0int
  (x0) =
node("t0int", res) where
val res =
(
case+ x0.node() of
| T0INTnone(tok) =>
  jsonify("T0INTnone", jsonize(tok))
| T0INTsome(tok) =>
  jsonify("T0INTsome", jsonize(tok))
) : labjsonval
end


implement
jsonize_t0chr
  (x0) =
node("t0chr", res) where
val res =
(
case+ x0.node() of
| T0CHRnone(tok) =>
  jsonify("T0CHRnone", jsonize(tok))
| T0CHRsome(tok) =>
  jsonify("T0CHRsome", jsonize(tok))
) : labjsonval
end

implement
jsonize_t0flt
  (x0) =
node("t0flt", res) where
val res =
(
case+ x0.node() of
| T0FLTnone(tok) =>
  jsonify("T0FLTnone", jsonize(tok))
| T0FLTsome(tok) =>
  jsonify("T0FLTsome", jsonize(tok))
) : labjsonval
end

implement
jsonize_t0str
  (x0) =
node("t0str", res) where
val res =
(
case+ x0.node() of
| T0STRnone(tok) =>
  jsonify("T0STRnone", jsonize(tok))
| T0STRsome(tok) =>
  jsonify("T0STRsome", jsonize(tok))
) : labjsonval
end

implement
jsonize_i0dnt
  (x0) =
(* node("i0dnt", res) where *)
@("i0dnt_node", res)
where
val res =
(
case+ x0.node() of
| I0DNTnone(tok) =>
  (* jsonify("I0DNTnone", jsonize(tok)) *)
  mknode("I0DNTnone", to_jsonval(jsonize(tok)))
| I0DNTsome(tok) =>
  (* jsonify("I0DNTsome", jsonize(tok)) *)
  mknode("I0DNTnone", to_jsonval(jsonize(tok)))
)
 (* : labjsonval *)
end

implement
jsonize_l0abl
  (l0) =
node("l0abl", res) where
val res =
(
case+
l0.node() of
| L0ABLsome(lab) =>
  jsonify("L0ABLsome", jsonize(lab))
| L0ABLnone(tok) =>
  jsonify("L0ABLnone", jsonize(tok))
) : labjsonval
end


implement
jsonize_s0ymb
  (x0) =
node("s0ymb", res) where
val res =
(
case+
x0.node() of
//
| S0YMBi0dnt(id0) =>
  jsonify("S0YMBi0dnt", jsonize(id0))
//
| S0YMBdtlab(dot1, lab2) =>
  jsonify("S0YMBdtlab", jsonize(dot1), jsonize(lab2))
| S0YMBbrack(tok1, tok2) =>
  jsonify("S0YMBbrack", jsonize(tok1), jsonize(tok2))
//
) : labjsonval
end (* end of [jsonize_s0ymb] *)



implement
jsonize_sq0eid
  (x0) =
node("sq0eid", res) where
val res =
(
case+ x0 of
| SQ0EIDnone(sid) =>
  jsonify("SQ0EIDnone", jsonize(sid))
| SQ0EIDsome(tok, sid) =>
  jsonify("SQ0EIDsome", jsonize(tok), jsonize(sid))
) : labjsonval
end

implement
jsonize_dq0eid
  (x0) =
node("dq0eid", res) where
val res =
(
case+ x0 of
| DQ0EIDnone(sid) =>
  jsonify("DQ0EIDnone", jsonize(sid))
| DQ0EIDsome(tok, sid) =>
  jsonify("DQ0EIDsome", jsonize(tok), jsonize(sid))
) : labjsonval
end


local

  implement
  jsonize_val<g0exp> = jsonize_g0exp

in (* in-of-local *)

implement
jsonize_g0exp
  (x0) =
node("g0exp", res) where
val res =
(
case+ x0.node() of
//
| G0Eid(tid) =>
  jsonify("GOEid", jsonize(tid))
//
| G0Eint(int) =>
  jsonify("GOEint", jsonize(int))
//
| G0Eapps(s0ts) =>
  jsonify("GOEapps",
    jsonize(s0ts) // jsonize_list<g0exp>("g0explst", s0ts)
  )
//
| G0Elist(t0, g0es, t1) =>
  jsonify("GOElist",
    jsonize(t0),
    jsonize(g0es), (* jsonize_list<g0exp>("g0explst", g0es), *)
    jsonize(t1)
  )
//
| G0Enone(tok) =>
  jsonify("G0Enone", jsonize(tok))
//
) : labjsonval
end (* end of [jsonize_g0exp] *)

end


local

  implement
  jsonize_val<g0eid> = jsonize_i0dnt

(*
  implement
  jsonize_g0eidlst(x) = jsonize_list<i0dnt>("i0dntlst", x)
*)

in (* in-of-local *)

implement
jsonize_g0marg
  (x0) =
node("g0marg", res) where
val res =
(
case+
x0.node() of
| G0MARGnone(tok) =>
  jsonify("G0MARGnone", jsonize(tok))
| G0MARGsarg(tbeg, g0as, tend) =>
  jsonify("G0MARGsarg",
    jsonize(tbeg),
    jsonize(g0as), (* jsonize_list<g0eid>("i0dntlst", g0as), *)
    jsonize(tend)
  )
| G0MARGdarg(tbeg, g0as, tend) =>
  jsonify("G0MARGdarg",
    jsonize(tbeg),
    jsonize(g0as), (* jsonize_list<g0eid>("i0dntlst", g0as), *)
    jsonize(tend)
  )
) : labjsonval
end (* jsonize_g0marg *)
end // end of [local]


local

implement
jsonize_val<sort0> = jsonize_sort0

in (* in-of-local *)

implement
jsonize_sort0
  (x0) =
(* node("sort0", res) where *)
("sort0", res) : labjsonval
where
val res =
(
case+ x0.node() of
//
| S0Tid(tid) =>
  (* jsonify("S0Tid", jsonize(tid)) *)
  mknode("S0Tid", to_jsonval(jsonize(tid)))
//
| S0Tint(int) =>
  (* jsonify("S0Tint", jsonize(int)) *)
  mknode("S0Tid", to_jsonval(jsonize(int)))
//
| S0Tapps(s0ts) =>
  (* jsonify("S0Tapps", *)
  (*   jsonize(s0ts) (* jsonize_list<sort0>("sort0lst", s0ts) *) *)
  (* ) *)
  mknode("S0Tapps", to_jsonval(jsonize(s0ts)))
//
| S0Tlist(t0, s0ts, t1) =>
(*
  jsonify("S0Tlist",
    jsonize(t0),
    jsonize(s0ts), (* jsonize_list<sort0>("sort0lst", s0ts), *)
    jsonize(t1)
  )
*)
  jsonval_labval2("tag", JSONstring("S0Tlist"), "data", data) where
    val data = l3(t0, s0ts, t1)
  end
//
| S0Tqual(q0, s0t) =>
  (* jsonify("S0Tqid", jsonize(q0), jsonize(s0t)) *)
  jsonval_labval2("tag", JSONstring("S0Tqual"), "data", data) where
    val data = l2(q0, s0t)
  end

//
| S0Tnone(tok) =>
  (* jsonify("S0Tnone", jsonize(tok)) *)
  jsonval_labval2("tag", JSONstring("S0Tnone"), "data", data) where
    val data = to_jsonval(jsonize(tok))
  end

//
) //: labjsonval
end (* end of [jsonize_sort0] *)

end // end of [local]

implement
jsonize_val<sort0> = jsonize_sort0

implement
jsonize_s0rtcon
  (x0) =
node("s0rtcon", res) where
val res =
(
case+ x0.node() of
| S0RTCON(sid, opt) =>
  jsonify("S0RTCON",
    jsonize(sid),
    jsonize(opt) (* jsonize_option<sort0>("sort0opt", opt) *)
  )
) : labjsonval
end (* end of [jsonize_s0rtcon] *)


local

implement jsonize_val<s0rtcon> = jsonize_s0rtcon

in

implement
jsonize_d0tsort
  (x0) =
node("d0tsort", res) where
val res =
(
case+ x0.node() of
| D0TSORT(tid, tok, s0cs) =>
  jsonify("D0RTCON",
    jsonize(tid),
    jsonize(tok),
    jsonize(s0cs) (* jsonize_list<s0rtcon>("s0rtconlst", s0cs) *)
  )
) : labjsonval
end (* end of [jsonize_d0tsort] *)
end


implement
jsonize_val<s0exp> = jsonize_s0exp

implement
jsonize_s0rtdef
  (x0) =
node("s0rtdef", res) where
val res =
(
case+ x0.node() of
| S0RTDEFsort(s0t) =>
  jsonify("S0RTDEFsort", jsonize(s0t))
| S0RTDEFsbst(tbeg, s0a0, tbar, s0es, tend) =>
  jsonify("S0RTDEFsbst",
    jsonize(tbeg),
    jsonize(s0a0),
    jsonize(tbar),
    jsonize(s0es), (* jsonize_list<s0exp>("s0explst", s0es), *)
    jsonize(tend)
  )
) : labjsonval
end (* end of [jsonize_s0rtdef] *)


implement
jsonize_s0arg
  (x0) =
node("s0arg", res) where
val res =
(
case+
x0.node() of
| S0ARGnone(tok) =>
  jsonify("S0ARGnone", jsonize(tok))
| S0ARGsome(sid, opt) =>
  jsonify("S0ARGsome",
    jsonize(sid),
    jsonize(opt) (* jsonize_option<sort0>("sort0opt", opt) *)
  )
) : labjsonval
end (* end of [jsonize_s0arg] *)


implement
jsonize_s0marg
  (x0) =
node("s0marg", res) where
val res =
(
case+
x0.node() of
| S0MARGnone(tok) =>
  jsonify("S0MARGnone", jsonize(tok))
| S0MARGsing(tid) =>
  jsonify("S0MARGsing", jsonize(tid))
| S0MARGlist(tbeg, s0as, tend) =>
  jsonify("S0MARGlist",
    jsonize(tbeg),
    jsonize(s0as), (* jsonize_list<s0arg>("s0arglst", s0as), *)
    jsonize(tend)
  )
) : labjsonval
end (* end of [jsonize_s0marg] *)


implement
jsonize_t0arg(x0) =
("t0arg", res) : labjsonval where
val res =
(
case+ x0.node() of
| T0ARGsome(tid, opt) =>
  mknode("T0ARGsome", data)
  where val data = l2(tid, opt) end
(*
  jsonval_labval2("tag", JSONstring("T0ARGsome"), "data", data) where
    val data = l2(tid, opt)
  end
*)
)
end (* end of [jsonize_t0arg] *)
(*
node("t0arg", res) where
val res =
(
case+
x0.node() of
| T0ARGsome(tid, opt) =>
  jsonify("T0ARGsome",
    jsonize(tid),
    jsonize(opt) (* jsonize_option<token>("tokenopt", opt) *)
  )
) : labjsonval
end (* end of [jsonize_t0arg] *)
*)


implement
jsonize_t0marg
  (x0) =
node("t0marg", res) where
val res =
(
case+
x0.node() of
| T0MARGnone(tok) =>
  jsonify("T0MARGnone", jsonize(tok))
| T0MARGlist(tbeg, t0as, tend) =>
  jsonify("T0MARGlist",
    jsonize(tbeg),
    jsonize(t0as), (* jsonize_list<t0arg>("t0arglst", t0as), *)
    jsonize(tend)
  )
) : labjsonval
end (* end of [jsonize_t0marg] *)


implement
jsonize_s0qua
  (x0) =
node("s0qua", res) where
val res =
(
case+ x0.node() of
| S0QUAprop(s0e) =>
  jsonify("S0QUAprop", jsonize(s0e))
| S0QUAvars(ids, opt) =>
  jsonify("S0QUAprop",
    jsonize(ids), (* jsonize_list<i0dnt>("i0dntlst", ids), *)
    jsonize(opt) (* jsonize_option<sort0>("sort0opt", opt) *)
  )
) : labjsonval
end


implement
jsonize_s0uni
  (x0) =
node("s0uni", res) where
val res =
(
case+ x0.node() of
| S0UNInone(tok) =>
  jsonify("S0UNInone", jsonize(tok))
| S0UNIsome(tbeg, s0qs, tend) =>
  jsonify("S0UNIsome",
    jsonize(tbeg),
    jsonize(s0qs), (* jsonize_list<s0qua>("s0qualst", s0qs), *)
    jsonize(tend)
  )
) : labjsonval
end


implement
{a}(*tmp*)
jsonize_sl0abled
  (x0) = let
//
val+SL0ABLED(l0, t0, x1) = x0
//
in
node("sl0abled", res) where
val res =
  jsonify("SL0ABLED",
    jsonize(l0),
    jsonize(t0),
    jsonize_val<a>(x1)
  ) : labjsonval
end

end // end of [jsonize_sl0abled]



local

implement jsonize_val<s0exp> = jsonize_s0exp
implement jsonize_val<s0marg> = jsonize_s0marg
(*
implement(a:t@ype)
jsonize_val<sl0abled(a)> = jsonize_sl0abled
*)

in (* in-of-local *)

fun name_s0exp(x: s0exp_node) : string =
(
case+ x of
| S0Eid _ => "S0Eid"
| S0Eop1 _ => "S0Eop1"
| S0Eop2 _ => "S0Eop2"
| S0Eint _ => "S0Eint"
| S0Echr _ => "S0Echr"
| S0Eflt _ => "S0Eflt"
| S0Estr _ => "S0Estr"
| S0Eapps _ => "S0Eapps"
| S0Eimp _ => "S0Eimp"
| S0Eparen _ => "S0Eparen"
| S0Eforall _ => "S0Eforall"
| S0Eexists _ => "S0Eexists"
| S0Etuple _ => "S0Etuple"
| S0Erecord _ => "S0Erecord"
| S0Elam _ => "S0Elam"
| S0Eanno _ => "S0Eanno"
| S0Equal _ => "S0Equal"
| S0Enone _ => "S0Enone"
)



implement
jsonize_s0exp
  (x0) =
("s0exp", mknode(tag, data)) : labjsonval
where
val tag = name_s0exp(x0.node())
val data =
(
case+ x0.node() of
| S0Eid(sid) => jval(sid)
| S0Eop1(opid) => jval(opid)
| S0Eop2(tbeg, opid, tend) => l3(tbeg, opid, tend)
| S0Eint(i0) => jval(i0)
| S0Echr(c0) => jval(c0)
| S0Eflt(f0) => jval(f0)
| S0Estr(s0) => jval(s0)
| S0Eapps(s0es) => jval(s0es)
| S0Eimp(tbeg, s0es, tend) => l3(tbeg, s0es, tend)
| S0Eparen(tbeg, s0es, tend) =>  l3(tbeg, s0es, tend)
| S0Eforall(tbeg, s0qs, tend) => l3(tbeg, s0qs, tend)
| S0Eexists(tbeg, s0qs, tend) => l3(tbeg, s0qs, tend)
| S0Etuple(tbeg, topt, s0es, tend) => l4(tbeg, topt, s0es, tend)
| S0Erecord(tbeg, topt, s0es, tend) => l4(tbeg, topt, s0es, tend)
| S0Elam(tbeg, arg0, res1, tok1, s0e0, tend) =>
  l6(tbeg, arg0, res1, tok1, s0e0, tend)
| S0Eanno(s0e, ann) => l2(s0e, ann)
| S0Equal(tok, s0e) => l2(tok, s0e)
| S0Enone(tok) => jval(tok)
)
: jsonval
end (* end of [jsonize_s0exp] *)

(*
implement
jsonize_s0exp
  (x0) =
node("s0exp", res) where
val res =
(
case+ x0.node() of
//
| S0Eid(sid) =>
  jsonify("S0Eid", jsonize(sid))
//
| S0Eop1(opid) =>
  jsonify("S0Eop1", jsonize(opid))
| S0Eop2(tbeg, opid, tend) =>
  jsonify("S0Eop1",
    jsonize(tbeg),
    jsonize(opid),
    jsonize(tend)
  )
//
| S0Eint(i0) =>
  jsonify("S0Eint", jsonize(i0))
| S0Echr(c0) =>
  jsonify("S0Echr", jsonize(c0))
| S0Eflt(f0) =>
  jsonify("S0Eflt", jsonize(f0))
| S0Estr(s0) =>
  jsonify("S0Estr", jsonize(s0))
//
| S0Eapps(s0es) =>
  jsonify("S0Eapps",
    jsonize(s0es) (* jsonize_list<s0exp>("s0explst", s0es) *)
  )
//
| S0Eimp(tbeg, s0es, tend) =>
  jsonify("S0Eimp",
    jsonize(tbeg),
    jsonize(s0es), (* jsonize_list<s0exp>("s0explst", s0es), *)
    jsonize(tend)
  )
| S0Eparen(tbeg, s0es, tend) =>
  jsonify("S0Eparen",
    jsonize(tbeg),
    jsonize(s0es), (* jsonize_list<s0exp>("s0explst", s0es), *)
    jsonize(tend)
  )
//
| S0Eforall(tbeg, s0qs, tend) =>
  jsonify("S0Eforall",
    jsonize(tbeg),
    jsonize(s0qs), (* jsonize_list<s0qua>("s0qualst", s0qs), *)
    jsonize(tend)
  )
| S0Eexists(tbeg, s0qs, tend) =>
  jsonify("S0Eexists",
    jsonize(tbeg),
    jsonize(s0qs), (* jsonize_list<s0qua>("s0qualst", s0qs), *)
    jsonize(tend)
  )
//
| S0Etuple(tbeg, topt, s0es, tend) =>
  jsonify("S0Etuple",
    jsonize(tbeg),
    jsonize(topt), (* jsonize_option<token>("tokenopt", topt), *)
    jsonize(s0es), (* jsonize_list<s0exp>("s0explst", s0es), *)
    jsonize(tend)
  )
| S0Erecord(tbeg, topt, s0es, tend) =>
  jsonify("S0Erecord",
    jsonize(tbeg),
    jsonize(topt), (* jsonize_option<token>("tokenopt", topt), *)
    jsonize(s0es), (* jsonize_list<sl0abled(s0exp)>("labs0explst", s0es), *)
    jsonize(tend)
  )
//
| S0Elam(tbeg, arg0, res1, tok1, s0e0, tend) =>
  jsonify("S0Elam",
    jsonize(tbeg),
    jsonize(arg0), (* jsonize_list<s0marg>("s0marglst", arg0), *)
    jsonize(res1), (* jsonize_option<sort0>("sort0opt", res1), *)
    jsonize(tok1),
    jsonize(s0e0),
    jsonize(tend) (* jsonize_option<token>("tokenopt", tend) *)
  )
//
| S0Eanno(s0e, ann) =>
  jsonify("S0Eanno",
    jsonize(s0e),
    jsonize(ann)
  )
//
| S0Equal(tok, s0e) =>
  jsonify("S0Equal", jsonize(tok), jsonize(s0e))
//
| S0Enone(tok) =>
  jsonify("S0Enone", jsonize(tok))
//
) : labjsonval
end (* end of [jsonize_s0exp] *)
*)

end // end of [local]



local

implement
jsonize_val<s0exp> = jsonize_s0exp

in (* in-of-local *)

implement
jsonize_s0exp_RPAREN
  (x0) =
node("s0exp_RPAREN", res) where
val res =
(
case+ x0 of
| s0exp_RPAREN_cons0(tok) =>
  jsonify("s0exp_RPAREN_cons0", jsonize(tok))
| s0exp_RPAREN_cons1(tok1, s0es, tok2) =>
  jsonify("s0exp_RPAREN_cons1",
    jsonize(tok1),
    jsonize(s0es), (* jsonize_list<s0exp>("s0explst", s0es), *)
    jsonize(tok2)
  )
) : labjsonval
end (* end of [jsonize_s0exp_RPAREN] *)

end // end of [local]



local

implement
jsonize_val<s0exp> = jsonize_s0exp

in (* in-of-local *)

implement
jsonize_labs0exp_RBRACE
  (x0) =
node("labs0exp_RBRACE", res) where
val res =
(
case+ x0 of
| labs0exp_RBRACE_cons0(tok) =>
  jsonify("labs0exp_RBRACE_cons0", jsonize(tok))
| labs0exp_RBRACE_cons1(tok1, ls0es, tok2) =>
  jsonify("labs0exp_RBRACE_cons0",
    jsonize(tok1),
    jsonize(ls0es), (* jsonize_list<labs0exp>("labs0explst", ls0es), *)
    jsonize(tok2)
  )
) : labjsonval
end (* end of [jsonize_labs0exp_RBRACE] *)

end // end of [local]



implement
jsonize_effs0expopt
  (x0) =
node("effs0expopt", res) where
val res =
(
case+ x0 of
| EFFS0EXPnone() =>
  jsonify("EFFS0EXPnone")
| EFFS0EXPsome(s0e) =>
  jsonify("EFFS0EXPsome", jsonize(s0e))
(*
| EFFS0EXPsome(s0f, s0e) =>
  jsonify("EFFS0EXPsome", jsonize(s0f), jsonize(s0e))
*)
) : labjsonval
end (* end of [jsonize_effs0expopt] *)



implement
jsonize_d0atype
  (x0) =
(* node("d0atype", res) where *)
("d0atype", res) : labjsonval
where
val res =
(
case+ x0.node() of
| D0ATYPE(tid, arg, res, teq, d0cs) =>
  jsonval_labval2("tag", JSONstring("D0ATYPE"), "data", data) where
  val data =
  l5(tid, arg, res, teq, d0cs)
  end
) //: labjsonval
end (* end of [jsonize_d0atype] *)
(*
node("d0atype", res) where
val res =
(
case+ x0.node() of
| D0ATYPE(tid, arg, res, teq, d0cs) =>
  jsonify("D0ATYPE",
    jsonize(tid),
    jsonize(arg), (* jsonize_list<t0marg>("t0marglst", arg), *)
    jsonize(res), (* jsonize_option<sort0>("sort0opt", res), *)
    jsonize(teq),
    jsonize(d0cs) (* jsonize_list<d0atcon>("d0atconlst", d0cs) *)
  )
) : labjsonval
end (* end of [jsonize_d0atype] *)
*)


local

implement jsonize_val<s0uni> = jsonize_s0uni
implement jsonize_val<s0exp> = jsonize_s0exp

in

implement
jsonize_d0atcon
  (x0) =
node("d0atcon", res) where
val res =
(
case+ x0.node() of
| D0ATCON(s0us, dcon, s0is, argopt) =>
  jsonify("D0ATCON",
    jsonize(s0us), (* jsonize_list<s0uni>("s0unilst", s0us), *)
    jsonize(dcon),
    jsonize(s0is), (* jsonize_list<s0exp>("s0explst", s0is), *)
    jsonize(argopt) (* jsonize_option<s0exp>("s0expopt", argopt) *)
  )
  where
    val jargopt = (
      case+ argopt of
      | None() => jsonify("None")
      | Some(x) => jsonize(x)
    )  : labjsonval
  end
) : labjsonval
end (* end of [jsonize_d0atcon] *)

end
