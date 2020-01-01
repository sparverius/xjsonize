#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/dynexp1.sats"
#staload "{$x}/SATS/dynexp2.sats"
#staload "{$x}/SATS/dynexp3.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/filpath.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp1.sats"
#staload "./../SATS/dynexp1.sats"
#staload "./../SATS/statyp2.sats"
#staload "./../SATS/staexp2.sats"
#staload "./../SATS/dynexp2.sats"
#staload "./../SATS/dynexp3.sats"

#staload _ = "./json.dats"

local
implement jsonize_val<d3ecl> = jsonize_d3ecl
in
implement jsonize_d3eclist(x) = jsonize_list<d3ecl>("d3eclist", x)
end

local
implement jsonize_val<d3clau> = jsonize_d3clau
in
implement jsonize_d3claulst(x) = jsonize_list<d3clau>("d3claulst", x)
end

local
implement jsonize_val<f3arg> = jsonize_f3arg
in
implement jsonize_f3arglst(x) = jsonize_list<f3arg>("f3arglst", x)
end

local
implement jsonize_val<d3gua> = jsonize_d3gua
in
implement jsonize_d3gualst(x) = jsonize_list<d3gua>("d3gualst", x)
end

local
implement jsonize_val<v3aldecl> = jsonize_v3aldecl
in
implement jsonize_v3aldeclist(x) = jsonize_list<v3aldecl>("v3aldeclist", x)
end

local
implement jsonize_val<v3ardecl> = jsonize_v3ardecl
in
implement jsonize_v3ardeclist(x) = jsonize_list<v3ardecl>("v3ardeclist", x)
end

local
implement jsonize_val<f3undecl> = jsonize_f3undecl
in
implement jsonize_f3undeclist(x) = jsonize_list<f3undecl>("f3undeclist", x)
end

local
implement jsonize_val<d3exp> = jsonize_d3exp

in
implement jsonize_d3explst(x) = jsonize_list<d3exp>("d3explst", x)
implement jsonize_d3expopt(x) = jsonize_option<d3exp>("d3expopt", x)
end

local
implement jsonize_val<d3pat> = jsonize_d3pat
in
implement jsonize_d3patlst(x) = jsonize_list<d3pat>("d3patlst", x)
end


implement
jsonize_d3pat
  (x0) =
node2("d3pat", jsonize(x0.loc()), res) where
val res =
(
case- x0.node() of
//
| D3Pnil() =>
  jsonify("D3Pnil")
| D3Pany() =>
  jsonify("D3Pany")
//
| D3Pint(tok) =>
  jsonify("D3Pint", jsonize(tok))
| D3Pbtf(tok) =>
  jsonify("D3Pbtf", jsonize(tok))
| D3Pchr(tok) =>
  jsonify("D3Pchr", jsonize(tok))
| D3Pflt(tok) =>
  jsonify("D3Pflt", jsonize(tok))
| D3Pstr(tok) =>
  jsonify("D3Pstr", jsonize(tok))
//
| D3Pvar(d2v) =>
  jsonify("D3Pvar", jsonize(d2v))
//
| D3Pcon1(d2c0) =>
  jsonify("D3Pcon1", jsonize(d2c0))
| D3Pcon2(d2cs) =>
  jsonify("D3Pcon2",
    jsonize(d2cs) (* jsonize_list<d2con>("d2conlst", d2cs) *)
  )
//
| D3Psym0(sym0, d2pis) =>
  jsonify("D3Psym0",
    jsonize(sym0),
    jsonize(d2pis)  (* jsonize_list<d2pitm>("d2pitmlst", d2pis) *)
  )
//
| D3Pdapp(d3f0, npf0, d3ps) =>
  jsonify("D3Pdapp",
    jsonize(d3f0),
    tagged("npf", npf0),
    jsonize(d3ps) (* jsonize_list<d3pat>("d3patlst", d3ps) *)
  )
//
| D3Ptuple(knd1, npf2, ldps) =>
  jsonify("D3Ptuple",
    jsonify("knd", jsonize(knd1)),
    tagged("npf", npf2),
    jsonize(ldps)  (* jsonize_list<d3pat>("d3patlst", ldps) *)
  )
//
| D3Panno(d3p1, s2e2) =>
  jsonify("D3Panno", jsonize(d3p1), jsonize(s2e2))
//
| D3Ptcast(d3p1, t2p2) =>
  jsonify("D3Ptcast", jsonize(d3p1), jsonize(t2p2))
//
| D3Pnone0() =>
  jsonify("D3Pnone0")
| D3Pnone1(d1psrc) =>
  jsonify("D3Pnone1", jsonize(d1psrc))
| D3Pnone2(d2psrc) =>
  jsonify("D3Pnone2", jsonize(d2psrc))
//
) : labjsonval  (* end of [jsonize_d3pat] *)
end


implement
jsonize_f3arg
  (x0) =
node2("f3arg", jsonize(x0.loc()), res) where
val res =
(
case+ x0.node() of
| F3ARGnone2(f2a) =>
  jsonify("F3ARGnone2", jsonize(f2a))
| F3ARGnone3(f3a) =>
  jsonify("F3ARGnone2", jsonize(f3a))
| F3ARGsome_met(s2es) =>
  jsonify("F3ARGsome_met",
    jsonize(s2es) (* jsonize_list<s2exp>("s2explst", s2es) *)
  )
| F3ARGsome_dyn(npf, d3ps) =>
  jsonify("F3ARGsome_dyn",
    tagged("npf", npf),
    jsonize(d3ps)  (* jsonize_list<d3pat>("d3patlst", d3ps) *)
  )
| F3ARGsome_sta(s2vs, s2ps) =>
  jsonify("F3ARGsome_sta",
    jsonize(s2vs), (* jsonize_list<s2var>("s2varlst", s2vs), *)
    jsonize(s2ps)  (* jsonize_list<s2exp>("s2explst", s2ps) *)
  )
) : labjsonval
end (* end of [jsonize_f3arg] *)


implement
jsonize_d3exp
  (x0) =
node2("d3exp", jsonize(x0.loc()), res) where
val res =
(
case+
x0.node() of
//
| D3Eint(tok) =>
  jsonify("D3Eint", jsonize(tok))
| D3Ebtf(tok) =>
  jsonify("D3Ebtf", jsonize(tok))
| D3Echr(tok) =>
  jsonify("D3Echr", jsonize(tok))
| D3Eflt(tok) =>
  jsonify("D3Eflt", jsonize(tok))
| D3Estr(tok) =>
  jsonify("D3Estr", jsonize(tok))
| D3Etop(tok) =>
  jsonify("D3Etop", jsonize(tok))
| D3Evar(d2v1) =>
  jsonify("D3Evar", jsonize(d2v1))
| D3Econ1(d2c1) =>
  jsonify("D3Econ1", jsonize(d2c1))
| D3Ecst1(d2c1) =>
  jsonify("D3Ecst1", jsonize(d2c1))
| D3Econ2(d2cs) =>
  jsonify("D3Econ2",
    jsonize(d2cs)  (* jsonize_list<d2con>("d2conlst", d2cs) *)
  )
| D3Ecst2(d2cs) =>
  jsonify("D3Ecst2",
    jsonize(d2cs)  (* jsonize_list<d2cst>("d2cstlst", d2cs) *)
  )
| D3Esym0(d1e1, dpis) =>
  jsonify("D3Esym0", jsonize(d1e1), jsonize(t2p0)) where
    val t2p0 = x0.type()
  end
//
| D3Efcst(d2c1) =>
  jsonify("D3Efcst", jsonize(d2c1))
| D3Etcst(d2c1, ti3a, ti2s) =>
  jsonify("D3Etcst",
    jsonize(d2c1),
    jsonize(ti3a),
    jsonize(ti2s)  (* jsonize_list<ti2arg>("ti2arglst", ti2s) *)
  )
| D3Etimp(d2e1, tsub1, d2c2, tsub2) =>
  jsonify("D3Etimp",
    jsonize(d2e1),
    jsonize(tsub1), (* jsonize_list<t2ype>("t2ypelst", tsub1), *)
    jsonize(d2c2),
    jsonize(tsub2)  (* jsonize_list<t2ype>("t2ypelst", tsub2) *)
  )
//
| D3Esap0(d3e1, s2es) =>
  jsonify("D3Esap0",
    jsonize(d3e1),
    jsonize(s2es)  (* jsonize_list<s2exp>("s2explst", s2es) *)
  )
| D3Esap1(d3e1, s2es) =>
  jsonify("D3Esap1",
    jsonize(d3e1),
    jsonize(s2es)  (* jsonize_list<s2exp>("s2explst", s2es) *)
  )
//
| D3Etapp(d2f0, s2es) =>
  jsonify("D3Etapp",
    jsonize(d2f0),
    jsonize(s2es)  (* jsonize_list<s2exp>("s2explst", s2es) *)
  )
//
| D3Edapp(d3e1, npf2, d3es) =>
  jsonify("D3Edapp",
    jsonize(d3e1),
    tagged("npf", npf2),
    jsonize(d3es) (* jsonize_list<d3exp>("d3explst", d3es) *)
  )
//
| D3Eproj(d3e1, lab2, idx2) =>
  jsonify("D3Eproj",
    jsonize(d3e1),
    jsonize(lab2),
    jsonize(idx2)
  )
//
| D3Elet(d3cs, d3e2) =>
  jsonify("D3Elet",
    jsonize(d3cs), (* jsonize_list<d3ecl>("d3eclst", d3cs), *)
    jsonize(d3e2)
  )
| D3Ewhere(d3e1, d3cs) =>
  jsonify("D3Ewhere",
    jsonize(d3e1),
    jsonize(d3cs)  (* jsonize_list<d3ecl>("d3eclst", d3cs) *)
  )
//
| D3Eseqn(d3es, d3e2) =>
  jsonify("D3Eseqn",
    jsonize(d3es), (* jsonize_list<d3exp>("d3explst", d3es), *)
    jsonize(d3e2)
  )
//
| D3Etuple(knd1, npf2, d3es) =>
  jsonify("D3Etuple",
    tagged("knd", knd1),
    tagged("npf", npf2),
    jsonize(d3es) (* jsonize_list<d3exp>("d3explst", d3es) *)
  )
//
| D3Eassgn(d3e1, d3e2) =>
  jsonify("D3Eassgn", jsonize(d3e1), jsonize(d3e2))
//
| D3Edtsel(lab0, dpis, npf2, arg3) =>
  (
  case+ arg3 of
  | None() =>
    jsonify("D2Edtsel",
      jsonize(lab0),
      jsonize(dpis)  (* jsonize_list<d2pitm>("d2pitmlst", dpis) *)

    )
  | Some(d3es) =>
    jsonify("D2Edtsel",
      jsonize(lab0),
      jsonize(dpis), (* jsonize_list<d2pitm>("d2pitmlst", dpis), *)
      tagged("npf", npf2),
      jsonize(d3es)  (* jsonize_list<d3exp>("d3explst", d3es) *)
    )
  )
//
| D3Eif0(d3e1, d3e2, opt3) =>
  jsonify("D3Eif0",
    jsonize(d3e1),
    jsonize(d3e2),
    jsonize(opt3)  (* jsonize_option<d3exp>("d3expopt", opt3) *)
  )
//
| D3Ecase(knd0, d3e1, dcls) =>
  jsonify("D3Ecase",
    tagged("knd", knd0),
    jsonize(d3e1),
    jsonize(dcls)  (* jsonize_list<d3clau>("d3claulst", dcls) *)
  )
//
| D3Elam(knd, f3as, tres, arrw, body) =>
  jsonify("D3Elam",
    jsonize(knd),
    jsonize(f3as), (* jsonize_list<f3arg>("f3arglst", f3as), *)
    jsonize(tres),
    jsonize(arrw),
    jsonize(body)
  )
| D3Efix(knd, fid, f3as, tres, arrw, body) =>
  jsonify("D3Efix",
    jsonize(knd),
    jsonize(fid),
    jsonize(f3as), (* jsonize_list<f3arg>("f3arglst", f3as), *)
    jsonize(tres),
    jsonize(arrw),
    jsonize(body)
  )
//
| D3Eaddr(d3e1) =>
   jsonify("D3Eaddr", jsonize(d3e1))
//
| D3Efold(d3e1) =>
   jsonify("D3Efold", jsonize(d3e1))
//
| D3Eeval(knd, d3e1) =>
  jsonify("D3Eeval",
    tagged("knd", knd),
    jsonize(d3e1)
  )
//
| D3Elazy(d3e1) =>
   jsonify("D3Elazy", jsonize(d3e1))
//
| D3Ellazy(d3e1, opt2) =>
  jsonify("D3Ellazy",
    jsonize(d3e1),
    jsonize(opt2)  (* jsonize_option<d3exp>("d3expopt", opt2) *)
  )
//
| D3Eanno(d3e1, s2e2) =>
  jsonify("D3Eanno", jsonize(d3e1), jsonize(s2e2))
//
| D3Eflat(d3e1) =>
   jsonify("D3Eflat", jsonize(d3e1))
| D3Etalf(d3e1) =>
   jsonify("D3Etalf", jsonize(d3e1))
//
| D3Elcast(d3e1, lab2) =>
  jsonify("D3Elcast", jsonize(d3e1), jsonize(lab2))
| D3Etcast(d3e1, t2p2) =>
  jsonify("D3Etcast", jsonize(d3e1), jsonize(t2p2))
//
| D3Enone0() =>
  jsonify("D3Enone0")
| D3Enone1(d2esrc) =>
  jsonify("D3Enone1", jsonize(d2esrc))
| D3Enone2(d3esrc) =>
  jsonify("D3Enone2", jsonize(d3esrc))
//
| D3Epcon(d3e1, d3e2) =>
  jsonify("D3Epcon", jsonize(d3e1), jsonize(d3e2))
//
) : labjsonval
end


implement
jsonize_d3gua
  (x0) =
node2("d3gua", jsonize(x0.loc()), res) where
val res =
(
case+
x0.node() of
| D3GUAexp(d3e) =>
  jsonify("D3GUAexp", jsonize(d3e))
| D3GUAmat(d3e, d3p) =>
  jsonify("D3GUAmat", jsonize(d3e), jsonize(d3p))
) : labjsonval  (* end of [jsonize_d3gua] *)
end


implement
jsonize_d3clau
  (x0) =
node2("d3clau", jsonize(x0.loc()), res) where
val res =
(
case+
x0.node() of
//
| D3CLAUpat(d3gp) =>
  jsonify("D3CLAUpat", jsonize(d3gp))
//
| D3CLAUexp(d3gp, d0e0) =>
  jsonify("D3CLAUexp", jsonize(d3gp), jsonize(d0e0))
//
) : labjsonval  (* end of [jsonize_d3clau] *)
end


implement
jsonize_d3gpat
  (x0) =
node2("d3gpat", jsonize(x0.loc()), res) where
val res =
(
case+
x0.node() of
//
| D3GPATpat(d3p) =>
  jsonify("D3GPATpat", jsonize(d3p))
//
| D3GPATgua(d3p, d3gs) =>
  jsonify("D3GPATgua",
    jsonize(d3p),
    jsonize(d3gs)  (* jsonize_list<d3gua>("d3gualst", d3gs) *)
  )
//
) : labjsonval
end (* end of [jsonize_d3gpat] *)

local

  implement jsonize_val<t2ype> = jsonize_t2ype

in

implement
jsonize_ti3arg
  (x0) =
node("ti3arg", res) where
val res =
(
case+ x0 of
| TI3ARGnone() =>
  jsonify("TI3ARGnone")
| TI3ARGsome(t2ps) =>
  jsonify("TI3ARGnone",
    jsonize(t2ps)  (* jsonize_list<t2ype>("t2ypelst", t2ps) *)
  )
) : labjsonval
end
end


local

(*
  implement
  jsonize_val<d3ecl> = jsonize_d3ecl
  implement
  jsonize_val<v3aldecl> = jsonize_v3aldecl
  implement
  jsonize_val<v3ardecl> = jsonize_v3ardecl
  implement
  jsonize_val<f3undecl> = jsonize_f3undecl
*)

in(*in-of-local*)

implement
jsonize_d3ecl
  (x0) =
node2("d3ecl", jsonize(x0.loc()), res) where
val res =
(
//
case+
x0.node() of
//
| D3Cd2ecl(d2c) =>
  jsonify("D3Cd2ecl", jsonize(d2c))
//
| D3Cstatic(tok, d3c) =>
  jsonify("D3Cstatic", jsonize(d3c))
| D3Cextern(tok, d3c) =>
  jsonify("D3Cextern", jsonize(d3c))
//
| D3Cinclude(tok, src, knd, fopt, body) =>
  jsonify("D3Cinclude",
    jsonize(tok),
    jsonize(src),
    tagged("knd", knd),
    jsonize(fopt), (* jsonize_option<filpath>("filpathopt", fopt), *)
    jsonize(body)
  ) where
  {
    val body =
    (
    case+ body of
    | None _ => "None()"
    | Some _ => "Some(<d3cls>)"): string
  }
//
| D3Clocal(head, body) =>
  jsonify("D3Clocal",
    jsonize(head), (* jsonize_list<d3ecl>("d3eclst", head), *)
    jsonize(body)  (* jsonize_list<d3ecl>("d3eclst", body) *)
  )
//
| D3Cvaldecl(knd, mopt, v3ds) =>
  jsonify("D3Cvaldecl",
    jsonize(knd),
    jsonize(mopt),
    jsonize(v3ds)  (* jsonize_list<v3aldecl>("v3aldeclst", v3ds) *)
  )
| D3Cvardecl(knd, mopt, v3ds) =>
  jsonify("D3Cvardecl",
    jsonize(knd),
    jsonize(mopt),
    jsonize(v3ds)  (* jsonize_list<v3ardecl>("v3ardeclst", v3ds) *)
  )
//
| D3Cfundecl(knd, mopt, tqas, f3ds) =>
  jsonify("D3Cfundecl",
    (* jsonify("knd",  *)
    jsonize(knd),
    jsonize(mopt),
    jsonize(tqas), (* jsonize_list<tq2arg>("tq2arglst", tqas), *)
    jsonize(f3ds)  (* jsonize_list<f3undecl>("f3undeclst", f3ds) *)
  )
//
| D3Cimpdecl1(knd, mopt, sqas, tqas, id2c, ti3a, ti2s, f3as, res0, d3e0) =>
  jsonify("D3Cimpdecl1",
    jsonify("knd", jsonize(knd)),
    jsonize(mopt),
    jsonize(sqas), (* jsonize_list<sq2arg>("sq2arglst", sqas), *)
    jsonize(tqas),  (* jsonize_list<tq2arg>("tq2arglst", tqas), *)
    jsonize(id2c),
    jsonize(ti3a),
    jsonize(ti2s), (* jsonize_list<ti2arg>("ti2arglst", ti2s), *)
    jsonize(f3as), (* jsonize_list<f3arg>("f3arglst", f3as), *)
    jsonize(res0),
    jsonize(d3e0)
  )
| D3Cimpdecl2(knd, mopt, sqas, tqas, id2c, ti3a, ti2s, f3as, res0, d3e0) =>
  jsonify("D3Cimpdecl2",
    jsonify("knd", jsonize(knd)),
    jsonize(mopt),
    jsonize(sqas), (* jsonize_list<sq2arg>("sq2arglst", sqas), *)
    jsonize(tqas), (* jsonize_list<tq2arg>("tq2arglst", tqas), *)
    jsonize(id2c),
    jsonize(ti3a),
    jsonize(ti2s), (* jsonize_list<ti2arg>("ti2arglst", ti2s), *)
    jsonize(f3as), (* jsonize_list<f3arg>("f3arglst", f3as), *)
    jsonize(res0),
    jsonize(d3e0)
  )
| D3Cimpdecl3(knd, mopt, sqas, tqas, id2c, ti3a, ti2s, f3as, res0, d3e0) =>
  jsonify("D3Cimpdecl3",
    jsonify("knd", jsonize(knd)),
    jsonize(mopt),
    jsonize(sqas), (* jsonize_list<sq2arg>("sq2arglst", sqas), *)
    jsonize(tqas), (* jsonize_list<tq2arg>("tq2arglst", tqas), *)
    jsonize(id2c),
    jsonize(ti3a),
    jsonize(ti2s), (* jsonize_list<ti2arg>("ti2arglst", ti2s), *)
    jsonize(f3as), (* jsonize_list<f3arg>("f3arglst", f3as), *)
    jsonize(res0),
    jsonize(d3e0)
  )
//
| D3Cnone0() =>
  jsonify("D3Cnone0")
| D3Cnone1(d3csrc) =>
  jsonify("D3Cnone1", jsonize(d3csrc))
) : labjsonval
end
//
end // end of [local]


implement
jsonize_t2pcast
  (x0) =
node("t2pcats", res) where
val res =
(
case+ x0 of
| T2PCASTnone() =>
  jsonify("T2PCASTnone")
| T2PCASTsome(t2p1, t2p2) =>
  jsonify("T2PCASTsome", jsonize(t2p1), jsonize(t2p2))
) : labjsonval  (* end of [jsonize_t2pcast] *)
end


implement
jsonize_v3aldecl
  (x0) = let
//
val+V3ALDECL(rcd) = x0
//
in
node2("v3aldecl", jsonize(rcd.loc), res) where
val res =
  jsonify("V3ALDECL",
    jsonize(rcd.pat),
    jsonize(rcd.def), (* jsonize_option<d3exp>("d3expopt", rcd.def), *)
    jsonize(rcd.wtp)  (* jsonize_option<s2exp>("s2expopt", rcd.wtp) *)
  ) : labjsonval
end
end // end of [jsonize_v3aldecl]


implement
jsonize_v3ardecl
  (x0) = let
//
val+V3ARDECL(rcd) = x0
//
in
node2("v3ardecl", jsonize(rcd.loc), res) where
val res =
  jsonify("V3ARDECL",
    jsonize(rcd.d2v),
    jsonize(rcd.wth), (* jsonize_option<d2var>("d2varopt", rcd.wth), *)
    jsonize(rcd.res), (* jsonize_option<s2exp>("s2expopt", rcd.res), *)
    jsonize(rcd.ini)  (* jsonize_option<d3exp>("d3expopt", rcd.ini) *)
  ) : labjsonval
end
end // end of [jsonize_v3ardecl]


implement
jsonize_f3undecl
  (x0) = let
//
val+F3UNDECL(rcd) = x0
//
in
node2("f3undecl", jsonize(rcd.loc), res) where
val res =
  jsonify("F3UNDECL",
    jsonize(rcd.nam),
    jsonize(rcd.d2c),
    jsonize(rcd.a2g), (* jsonize_list<f2arg>("f2arglst", rcd.a2g), *)
    jsonize(rcd.res),
    jsonize(rcd.def), (* jsonize_option<d3exp>("d3expopt", rcd.def), *)
    jsonize(rcd.ctp),
    jsonize(rcd.wtp)  (* jsonize_option<s2exp>("s2expopt", rcd.wtp) *)
  ) : labjsonval
end
end // end of [jsonize_f3undecl]
