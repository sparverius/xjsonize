#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/dynexp1.sats"
#staload "{$x}/SATS/dynexp2.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/filpath.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/dynexp1.sats"
#staload "./../SATS/dynexp2.sats"
#staload "./../SATS/staexp2.sats"

#staload _ = "./json.dats"
(*
#staload _ = "./staexp0.dats"
#staload _ = "./dynexp0.dats"
#staload _ = "./staexp1.dats"
#staload _ = "./staexp2.dats"
*)

#staload SYM_J = "./../SATS/symbol.sats"
#staload STM_J = "./../SATS/stamp0.sats"

(* overload jsonize with $D1.jsonize_d1exp *)
(* overload jsonize with $D1.jsonize_d1ecl *)

overload jsonize with $SYM_J.jsonize_symbol
overload jsonize with $STM_J.jsonize_stamp

local
implement jsonize_val<sq2arg> = jsonize_sq2arg
in
implement jsonize_sq2arglst(x) = jsonize_list<sq2arg>("sq2arglst", x)
end

local
implement jsonize_val<tq2arg> = jsonize_tq2arg
in
implement jsonize_tq2arglst(x) = jsonize_list<tq2arg>("tq2arglst", x)
end

local
implement jsonize_val<d2con> = jsonize_d2con
in
implement jsonize_d2conlst(x) = jsonize_list<d2con>("d2conlst", x)
end

local
implement jsonize_val<d2cst> = jsonize_d2cst in
implement jsonize_d2cstlst(x) = jsonize_list<d2cst>("d2cstlst", x)
implement jsonize_d2cstopt(x) = jsonize_option<d2cst>("d2cstopt", x)
end

local
implement jsonize_val<d2var> = jsonize_d2var
in
implement jsonize_d2varlst(x) = jsonize_list<d2var>("d2varlst", x)
implement jsonize_d2varopt(x) = jsonize_option<d2var>("d2varopt", x)

end

local
implement jsonize_val<d2itm> = jsonize_d2itm
in
implement jsonize_d2itmlst(x) = jsonize_list<d2itm>("d2itmlst", x)
end

local
implement jsonize_val<d2pitm> = jsonize_d2pitm
in
implement jsonize_d2pitmlst(x) = jsonize_list<d2pitm>("d2pitmlst", x)
end

local
implement jsonize_val<d2pat> = jsonize_d2pat
in
implement jsonize_d2patlst(x) = jsonize_list<d2pat>("d2patlst", x)
end

local
implement jsonize_val<f2arg> = jsonize_f2arg
in
implement jsonize_f2arglst(x) = jsonize_list<f2arg>("f2arglst", x)
end

local
implement jsonize_val<ti2arg> = jsonize_ti2arg
in
implement jsonize_ti2arglst(x) = jsonize_list<ti2arg>("ti2arglst", x)
end

local
implement jsonize_val<d2gua> = jsonize_d2gua
in
implement jsonize_d2gualst(x) = jsonize_list<d2gua>("d2gualst", x)
end

local
implement jsonize_val<d2clau> = jsonize_d2clau
in
implement jsonize_d2claulst(x) = jsonize_list<d2clau>("d2claulst", x)
end

local
implement jsonize_val<d2exp> = jsonize_d2exp
in
implement jsonize_d2explst(x) = jsonize_list<d2exp>("d2explst", x)
implement jsonize_d2expopt(x) = jsonize_option<d2exp>("d2expopt", x)
end

local
implement jsonize_val<v2aldecl> = jsonize_v2aldecl
in
implement jsonize_v2aldeclist(x) = jsonize_list<v2aldecl>("v2aldeclist", x)
end

local
implement jsonize_val<v2ardecl> = jsonize_v2ardecl
in
implement jsonize_v2ardeclist(x) = jsonize_list<v2ardecl>("v2ardeclist", x)
end

local
implement jsonize_val<f2undecl> = jsonize_f2undecl
in
implement jsonize_f2undeclist(x) = jsonize_list<f2undecl>("f2undeclist", x)
end

local
implement jsonize_val<d2ecl> = jsonize_d2ecl
in
implement jsonize_d2eclist(x) = jsonize_list<d2ecl>("d2eclist", x)
end



(*
implement
jsonize_val<d2con> = jsonize_d2con
*)

implement
jsonize_d2con
  (x0) =
(
  node2("d2con", jsonize(x0.loc()), rst) where
    val lst = $list{labjsonval}
    (
      $SYM_J.labify_symbol(x0.sym()),
      $STM_J.labify_stamp(x0.stamp())
    )
    val rst = JSONlablist(lst)
  end

)


(*
implement
jsonize_val<d2cst> = jsonize_d2cst
*)

implement
jsonize_d2cst
  (x0) =
(
  node2("d2cst", jsonize(x0.loc()), rst) where
    val lst = $list{labjsonval}(
      $SYM_J.labify_symbol(x0.sym()),
      $STM_J.labify_stamp(x0.stamp())
    )
    val rst = JSONlablist(lst)
  end
)


(*
implement
jsonize_val<d2var> = jsonize_d2var
*)

implement
jsonize_d2var
  (x0) =
  node2("d2var", jsonize(x0.loc()), rst) where
    val lst = $list{labjsonval}(
      $SYM_J.labify_symbol(x0.sym()),
      $STM_J.labify_stamp(x0.stamp())
    )
    val rst = JSONlablist(lst)
  end


(*
implement
jsonize_val<f2arg> = jsonize_f2arg
implement
jsonize_val<d2pat> = jsonize_d2pat
implement
jsonize_val<s2var> = jsonize_s2var
implement
jsonize_val<s2exp> = jsonize_s2exp
*)


implement
jsonize_f2arg
  (x0) =
node2("f2arg", jsonize(x0.loc()), res) where
val res =
(
//
case+
x0.node() of
(*
| F2ARGnone(tok) =>
  jsonize("F2ARGnone", "tok", jsonize(tok))
*)
| F2ARGsome_met(s2es) =>
  jsonify("F2ARGsome_met",
    jsonize(s2es)  (* jsonize_list<s2exp>("s2explst", s2es) *)
  )
| F2ARGsome_dyn(npf, d2ps) =>
  jsonify("F2ARGsome_dyn",
    labval("npf", jsonize(npf)),
    jsonize(d2ps) (* jsonize_list<d2pat>("d2patlst", d2ps) *)
  )
| F2ARGsome_sta(s2vs, s2ps) =>
  jsonify("F2ARGsome_sta",
    jsonize(s2vs), (* jsonize_list<s2var>("s2varlst", s2vs), *)
    jsonize(s2ps)  (* jsonize_list<s2exp>("s2explst", s2ps) *)
  )
)
end


(*
implement
jsonize_val<d2pat> = jsonize_d2pat
implement
jsonize_val<s2var> = jsonize_s2var

implement
jsonize_val<d2pitm> = jsonize_d2pitm
*)


implement
jsonize_d2pat
  (x0) =
node2("d2pat", jsonize(x0.loc()), res) where
val res =
(
case- x0.node() of
//
| D2Pint(tok) =>
  jsonify("D2Pint", jsonize(tok))
| D2Pbtf(tok) =>
  jsonify("D2Pbtf", jsonize(tok))
| D2Pchr(tok) =>
  jsonify("D2Pchr", jsonize(tok))
| D2Pflt(tok) =>
  jsonify("D2Pflt", jsonize(tok))
| D2Pstr(tok) =>
  jsonify("D2Pstr", jsonize(tok))
//
| D2Pvar(d2v) =>
  jsonify("D2Pvar", jsonize(d2v))
//
| D2Pcon1(d2c0) =>
  jsonify("D2Pcon1", jsonize(d2c0))
| D2Pcon2(d2cs) =>
  jsonify("D2Pcon2",
    jsonize(d2cs) (* jsonize_list<d2con>("d2conlst", d2cs) *)
  )
//
| D2Psym0(sym, d2pis) =>
  jsonify("D2Psym0",
    jsonize(sym),
    jsonize(d2pis) (* jsonize_list<d2pitm>("d2pitmlst", d2pis) *)
  )
//
| D2Psapp(d2f0, s2vs) =>
  jsonify("D2Psapp",
    jsonize(d2f0),
    jsonize(s2vs) (* jsonize_list<s2var>("s2varlst", s2vs) *)
  )
| D2Pdapp(d2f0, npf0, d2ps) =>
  jsonify("D2Pdapp",
    jsonize(d2f0),
    labval("npf", jsonize(npf0)),
    jsonize(d2ps) (* jsonize_list<d2pat>("d2patlst", d2ps) *)
  )
//
| D2Ptuple(knd, npf, d2ps) =>
  jsonify("D2Ptuple",
    jsonize(knd),
    labval("npf", jsonize(npf)),
    jsonize(d2ps)  (* jsonize_list<d2pat>("d2patlst", d2ps) *)
  )
//
| D2Panno(d2p1, s2e2) =>
  jsonify("D2Panno",
    jsonize(d2p1),
    jsonize(s2e2)
  )
//
| D2Pnone0() =>
  jsonify("D2Pnone0")
| D2Pnone1(d1psrc) =>
  jsonify("D2Pnone1", jsonize(d1psrc))
//
) (* end of [jsonize_d2pat] *)
end


(*
implement
jsonize_val<d2exp> = jsonize_d2exp
implement
jsonize_val<d2ecl> = jsonize_d2ecl
implement
jsonize_val<d2pitm> = jsonize_d2pitm
implement
jsonize_val<s2exp> = jsonize_s2exp
implement
jsonize_val<d2clau> = jsonize_d2clau

implement
jsonize_val<f2arg> = jsonize_f2arg
implement
jsonize_val<effs2expopt> = jsonize_effs2expopt
*)


implement
jsonize_d2exp
  (x0) =
node2("d2exp", jsonize(x0.loc()), res) where
val res =
(
case+ x0.node() of
//
| D2Eint(tok) =>
  jsonify("D2Eint", jsonize(tok))
| D2Ebtf(tok) =>
  jsonify("D2Ebtf", jsonize(tok))
| D2Echr(tok) =>
  jsonify("D2Echr", jsonize(tok))
| D2Eflt(tok) =>
  jsonify("D2Eflt", jsonize(tok))
| D2Estr(tok) =>
  jsonify("D2Estr", jsonize(tok))
//
| D2Etop(tok) =>
  jsonify("D2Etop", jsonize(tok))
//
| D2Evar(d2v) =>

  jsonify("D2Evar", jsonize(d2v))
//
| D2Ecst1(d2c) =>
  jsonify("D2Ecst1", jsonize(d2c))
| D2Econ1(d2c) =>
  jsonify("D2Econ1", jsonize(d2c))
| D2Ecst2(d2cs) =>
  jsonify("D2Ecst2",
    jsonize(d2cs)  (* jsonize_list<d2cst>("d2cstlst", d2cs) *)
  )
| D2Econ2(d2cs) =>
  jsonify("D2Econ2",
    jsonize(d2cs)  (* jsonize_list<d2con>("d2conlst", d2cs) *)
  )
//
| D2Esym0(d1e1, dpis) =>
  jsonify("D2Esym0",
    jsonize(d1e1),
    jsonize(dpis)  (* jsonize_list<d2pitm>("d2pitmlst", dpis) *)
  )
//
| D2Esapp(d2f0, s2as) =>
  jsonify("D2Esapp",
    jsonize(d2f0),
    jsonize(s2as)  (* jsonize_list<s2exp>("s2explst", s2as) *)
  )
| D2Etapp(d2f0, s2as) =>
  jsonify("D2Etapp",
    jsonize(d2f0),
    jsonize(s2as)  (* jsonize_list<s2exp>("s2explst", s2as) *)
  )
| D2Edapp(d2f0, npf0, d2as) =>
  jsonify("D2Edapp",
    jsonize(d2f0),
    labval("npf", jsonize(npf0)),
    jsonize(d2as)  (* jsonize_list<d2exp>("d2explst", d2as) *)
  )
//
| D2Elet(d2cs, d2e2) =>
  jsonify("D2Elet",
    jsonize(d2cs), (* jsonize_list<d2ecl>("d2eclst", d2cs), *)
    jsonize(d2e2)
  )
| D2Ewhere(d2e1, d2cs) =>
  jsonify("D2Ewhere",
    jsonize(d2e1),
    jsonize(d2cs)  (* jsonize_list<d2ecl>("d2eclst", d2cs) *)
  )
//
| D2Eseqn(d2es, d1e1) =>
  jsonify("D2Eseqn",
    jsonize(d2es), (* jsonize_list<d2exp>("d2explst", d2es), *)
    jsonize(d1e1)
  )
//
| D2Etuple(knd, npf, d2es) =>
  jsonify("D2Etuple",
    jsonize(knd),
    labval("npf", jsonize(npf)),
    jsonize(d2es)  (* jsonize_list<d2exp>("d2explst", d2es) *)
  )
//
| D2Eassgn(d2e1, d2e2) =>
  jsonify("D2Eassgn", jsonize(d2e1), jsonize(d2e2))
//
| D2Edtsel(lab0, dpis, npf2, arg3) =>
  (
  case+ arg3 of
  | None() =>
    jsonify("D2Edtsel",
      jsonize(lab0),
      jsonize(dpis) (* jsonize_list<d2pitm>("d2pitmlst", dpis) *)
    )
  | Some(d2es) =>
    jsonify("D2Edtsel",
      jsonize(lab0),
      jsonize(dpis), (* jsonize_list<d2pitm>("d2pitmlst", dpis), *)
      labval("npf", jsonize(npf2)),
      jsonize(d2es)  (* jsonize_list<d2exp>("d2explst", d2es) *)
    )
  )
//
| D2Eif0(d2e1, d2e2, opt3) =>
  jsonify("D2Eif0",
    jsonize(d2e1),
    jsonize(d2e2),
    jsonize(opt3)  (* jsonize_option<d2exp>("d2expopt", opt3) *)
  )
//
| D2Ecase(knd, d2e1, d2cls) =>
  jsonify("D2Ecase",
    jsonize(knd),
    jsonize(d2e1),
    jsonize(d2cls)  (* jsonize_list<d2clau>("d2claulst", d2cls) *)
  )
//
| D2Elam(knd, f2as, tres, arrw, body) =>
  jsonify("D2Elam",
    jsonize(knd),
    jsonize(f2as), (* jsonize_list<f2arg>("f2arglst", f2as), *)
    jsonize(tres),
    jsonize(arrw),
    jsonize(body)
  )
| D2Efix(knd, fid, f2as, tres, arrw, body) =>
  jsonify("D2Efix",
    jsonize(knd),
    jsonize(fid),
    jsonize(f2as), (* jsonize_list<f2arg>("f2arglst", f2as), *)
    jsonize(tres),
    jsonize(arrw),
    jsonize(body)
  )
//
(*
| D2Eflat(d2e1) =>
  fprint!(out, "D2Eflat(", d2e1, ")")
*)
//
| D2Eaddr(d2e1) =>
  jsonify("D2Eaddr", jsonize(d2e1))
| D2Eeval(d2e1) =>
  jsonify("D2Eeval", jsonize(d2e1))
| D2Efold(d2e1) =>
  jsonify("D2Efold", jsonize(d2e1))
//
| D2Elazy(d2e1) =>
  jsonify("D2Elazy", jsonize(d2e1))
| D2Ellazy(d2e1, opt2) =>
  jsonify("D2Ellazy",
    jsonize(d2e1),
    jsonize(opt2)  (* jsonize_option<d2exp>("d2expopt", opt2) *)
  )
//
| D2Eanno(d2e1, s2e2) =>
  jsonify("D2Eanno", jsonize(d2e1), jsonize(s2e2))
//
| D2Enone0() =>
  jsonify("D2Enone0")
| D2Enone1(d1esrc) =>
  jsonify("D2Enone1", jsonize(d1esrc))
//
)
end // end of where



local

(*
  implement
  jsonize_val<d2ecl> = jsonize_d2ecl
  implement
  jsonize_val<v2aldecl> = jsonize_v2aldecl
  implement
  jsonize_val<v2ardecl> = jsonize_v2ardecl
  implement
  jsonize_val<f2undecl> = jsonize_f2undecl

  implement
  jsonize_val<f2arg> = jsonize_f2arg
  implement
  jsonize_val<ti2arg> = jsonize_ti2arg
  implement
  jsonize_val<tq2arg> = jsonize_tq2arg
  implement
  jsonize_val<sq2arg> = jsonize_sq2arg
*)

  overload jsonize with jsonize_loc_t of 1

in (* in-of-local *)

implement
jsonize_d2ecl
  (x0) =
node2("d2ecl", jsonize(x0.loc()), res) where
val res =
(
case- x0.node() of
//
| D2Cstatic
  (tok, d2c) =>
  jsonify("D2Cstatic", jsonize(d2c))
| D2Cextern
  (tok, d2c) =>
  jsonify("D2Cextern", jsonize(tok), jsonize(d2c))
//
| D2Cinclude
  ( tok
  , src, knd
  , fopt, body) =>
  jsonify("D2Cinclude",
    jsonize(tok),
    jsonize(src),
    labval("knd", jsonize(knd)),
    jsonize(fopt), (* jsonize_option<filpath>("filpathopt", fopt), *)
    body
  ) where
      val body =
      (
      case+ body of
      | None _ => "None()"
      | Some _ => "Some(<d2cls>)"
      ): string
      val body = jsonize(body)

      // to expand the list of d2ecls from included file
      (*
      val body =
      (
      case+ body of
      | None _ => jnul()
      | Some d => labval("Some", jsonize_list<d2ecl>("d2eclst", d))
      )
      *)

    end
//
| D2Cstaload(tok, src, knd, fopt, flag, body) =>
  jsonify("D2Cinclude",
    jsonize(tok),
    jsonize(src),
    labval("knd", jsonize(knd)),
    jsonize(fopt), (* jsonize_option<filpath>("filpathopt", fopt), *)
    labval("flag", jsonize(flag)),
    body
  ) where
  {
      val body =
      (
      case+ body of
      | None _ => "None()"
      | Some _ => "Some(<fmodenv>)"
      ): string
      val body = jsonize(body)

      // to expand the list of d1ecls from included file
      (*
      val body =
      (
      case+ body of
      | None _ => jnul()
      | Some d => labval("Some", jsonize_list<d2ecl>("d2eclst", d))
      )
      *)
  }
//
| D2Clocal(head0, body) =>
  jsonify("D2Clocal",
    jsonize(head0), (* jsonize_list<d2ecl>("d2eclst", head), *)
    jsonize(body)  (* jsonize_list<d2ecl>("d2eclst", body) *)
  )
//
| D2Cabssort(d1c) =>
  jsonify("D2Cabssort", jsonize(d1c))
//
| D2Cstacst0(s2c, s2t) =>
  jsonify("D2Cstacst0", jsonize(s2c), jsonize(s2t))
//
| D2Csortdef(sym, s2tx) =>
  jsonify("D2Csortdef",
    jsonize(sym),
    jsonize(s2tx)
  )
//
| D2Csexpdef(s2c, s2e) =>
  jsonify("D2Csexpdef", jsonize(s2c), jsonize(s2e))
//
| D2Cabstype(s2c, df2) =>
  jsonify("D2Cabstype", jsonize(s2c), jsonize(df2))
//
| D2Cabsimpl(knd, sqid, def0) =>
  jsonify("D2Csymload",
    jsonize(knd),
    jsonize(sqid),
    jsonize(def0)
  )
//
| D2Csymload(tok, sym0, dpi1) =>
  jsonify("D2Csymload",
    jsonize(tok),
    jsonize(sym0),
    jsonize(dpi1)
  )
//
| D2Cvaldecl(knd, mopt, v2ds) =>
  jsonify("D2Cvaldecl",
    jsonize(knd),
    jsonize(mopt),
    jsonize(v2ds)  (* jsonize_list<v2aldecl>("v2aldeclst", v2ds) *)
  )
| D2Cfundecl(knd, mopt, tqas, f2ds) =>
  jsonify("D2Cfundecl",
    jsonize(knd),
    jsonize(mopt),
    jsonize(tqas), (* jsonize_list<tq2arg>("tq2arglst", tqas), *)
    jsonize(f2ds)  (* jsonize_list<f2undecl>("f2undeclst", f2ds) *)
  )
//
| D2Cvardecl(knd, mopt, v2ds) =>
  jsonify("D2Cvardecl",
    jsonize(knd),
    jsonize(mopt),
    jsonize(v2ds)  (* jsonize_list<v2ardecl>("v2ardeclst", v2ds) *)
  )
//
| D2Cimpdecl1(knd, mopt, sqas, tqas, dqid, tias, f2as, res0, d2e1) =>
  jsonify("D2Cimpdecl1",
    jsonize(knd),
    jsonize(mopt),
    jsonize(sqas), (* jsonize_list<sq2arg>("sq2arglst", sqas), *)
    jsonize(tqas), (* jsonize_list<tq2arg>("tq2arglst", tqas), *)
    jsonize(dqid),
    jsonize(tias), (* jsonize_list<ti2arg>("ti2arglst", tias), *)
    jsonize(f2as), (* jsonize_list<f2arg>("f2arglst", f2as), *)
    jsonize(res0),
    jsonize(d2e1)
  )
| D2Cimpdecl2(knd, mopt, sqas, tqas, dqid, tias, f2as, res0, d2e1) =>
  jsonify("D2Cimpdecl2",
    jsonize(knd),
    jsonize(mopt),
    jsonize(sqas), (* jsonize_list<sq2arg>("sq2arglst", sqas), *)
    jsonize(tqas), (* jsonize_list<tq2arg>("tq2arglst", tqas), *)
    jsonize(dqid),
    jsonize(tias), (* jsonize_list<ti2arg>("ti2arglst", tias), *)
    jsonize(f2as), (* jsonize_list<f2arg>("f2arglst", f2as), *)
    jsonize(res0),
    jsonize(d2e1)
  )
//
| D2Cdatasort(d1c) =>
  jsonify("D2Cdatasort", jsonize(d1c))
| D2Cdatatype(d1c) =>
  jsonify("D2Cdatatype", jsonize(d1c))
//
| D2Cdynconst(knd, tqas, d2cs) =>
  jsonify("D2Cdynconst",
    jsonize(knd),
    jsonize(tqas), (* jsonize_list<tq2arg>("tq2arglst", tqas), *)
    jsonize(d2cs)  (* jsonize_list<d2cst>("d2cstlst", d2cs) *)
  )
//
| D2Cnone0() =>
  jsonify("D2Cnone0")
| D2Cnone1(d1csrc) =>
  jsonify("D2Csortdef", jsonize(d1csrc))
//
) (* end of [jsonize_d2ecl] *)
end

end // end of [local]



implement
jsonize_d2itm
  (x0) =
node("d2itm", res) where
val res =
(
case+ x0 of
//
| D2ITMvar(d2v0) =>
  jsonify("D2ITMvar", jsonize(d2v0))
//
| D2ITMcon(d2cs) =>
  jsonify("D2ITMcon",
    jsonize(d2cs) (* jsonize_list<d2con>("d2conlst", d2cs) *)
  )
//
| D2ITMcst(d2cs) =>
  jsonify("D2ITMcst",
    jsonize(d2cs) (* jsonize_list<d2cst>("d2cstlst", d2cs) *)
  )
//
| D2ITMsym(sym, dpis) =>
  jsonify("D2ITMsym",
    jsonize(sym),
    jsonize(dpis) (* jsonize_list<d2pitm>("d2pitmlst", dpis) *)
  )
//
) (* end of [jsonize_d2itm] *)
end

implement
jsonize_d2pitm
  (x0) =
node("d2pitm", res) where
val res =
(
case+ x0 of
| D2PITMnone(dqid) =>
  jsonify("D2PITMnone", jsonize(dqid))
| D2PITMsome(pval, d2i0) =>
  jsonify("D2PITMsome",
    labval("pval", jsonize(pval)),
    jsonize(d2i0)
  )
) (* end of [jsonize_d2pitm] *)
end


local

(*
implement
jsonize_val<s2var> = jsonize_s2var
*)

in

implement
jsonize_sq2arg
  (x0) =
(
  node2(
    "sq2arg",
    jsonize(x0.loc()),
    jsonize(x0.s2vs())  (* jsonize_list<s2var>("s2varlst", x0.s2vs()) *)
  )
) (* end of [jsonize_sq2arg] *)

implement
jsonize_tq2arg
  (x0) =
(
  node2(
    "tq2arg",
    jsonize(x0.loc()),
    jsonize(x0.s2vs())  (* jsonize_list<s2var>("s2varlst", x0.s2vs()) *)
  )
) (* end of [jsonize_tq2arg] *)

end

implement
jsonize_ti2arg
  (x0) =
(
  node2(
    "ti2arg",
    jsonize(x0.loc()),
    jsonize(x0.s2es())  (* jsonize_list<s2exp>("s2explst", x0.s2es()) *)
  )
) (* end of [jsonize_ti2arg] *)


local

(*
implement
jsonize_val<d2cst> = jsonize_d2cst
*)

in

implement
jsonize_impld2cst
  (x0) =
node("impld2cst", res) where
val res =
(
case+ x0 of
| IMPLD2CST1(dqid, d2cs) =>
  jsonify("IMPLD2CST1",
    jsonize(dqid),
    jsonize(d2cs)  (* jsonize_list<d2cst>("d2cstlst", d2cs) *)
  )
| IMPLD2CST2(dqid, d2cs, opt2) =>
  jsonify("IMPLD2CST2",
    jsonize(dqid),
    jsonize(d2cs), (* jsonize_list<d2cst>("d2cstlst", d2cs), *)
    jsonize(opt2)  (* jsonize_option<d2cst>("d2cstopt", opt2) *)
  )
)
end // end of [jsonize_impld2cst]


(*
implement
jsonize_val<s2cst> = jsonize_s2cst
*)

implement
jsonize_impls2cst
  (x0) =
node("impls2cst", res) where
val res =
(
case+ x0 of
| IMPLS2CST1(sqid, s2cs) =>
  jsonify("IMPLS2CST1",
    jsonize(sqid),
    jsonize(s2cs)  (* jsonize_list<s2cst>("s2cstlst", s2cs) *)
  )
| IMPLS2CST2(sqid, s2cs, opt2) =>
  jsonify("IMPLS2CST2",
    jsonize(sqid),
    jsonize(s2cs), (* jsonize_list<s2cst>("s2cstlst", s2cs), *)
    jsonize(opt2)  (* jsonize_option<s2cst>("s2cstopt", opt2) *)
  )
)
end // end of [jsonize_impls2cst]

end


implement
jsonize_d2clau
  (x0) =
node2("d2clau", jsonize(x0.loc()), res) where
val res =
(
case+
x0.node() of
| D2CLAUpat(d2gp) =>
  jsonify("D2CLAUpat", jsonize(d2gp))
| D2CLAUexp(d2gp, d0e0) =>
  jsonify("D2CLAUexp", jsonize(d2gp), jsonize(d0e0))
)
end


implement
jsonize_d2gua
  (x0) =
node("d2gua", res) where
val res =
(
case+
x0.node() of
| D2GUAexp(d2e) =>
  jsonify("D2GUAexp", jsonize(d2e))
| D2GUAmat(d2e, d2p) =>
  jsonify("D2GUAmat", jsonize(d2e), jsonize(d2p))
)
end (* end of [jsonize_d2gua] *)


(*
implement
jsonize_val<d2gua> = jsonize_d2gua
*)

implement
jsonize_d2gpat
  (x0) =
node2("d2gpat", jsonize(x0.loc()), res) where
val res =
(
case+
x0.node() of
| D2GPATpat(d2p) =>
  jsonify("D2GPATpat", jsonize(d2p))
| D2GPATgua(d2p, d2gs) =>
  jsonify("D2GPATgua",
    jsonize(d2p),
    jsonize(d2gs)  (* jsonize_list<d2gua>("d2gualst", d2gs) *)
  )
)
end

implement
jsonize_v2aldecl
  (x0) = let
//
val+V2ALDECL(rcd) = x0
//
in
  node2("v2arlecl", jsonize(rcd.loc), res) where
  val res =
  jsonify("V2ALDECL",
    jsonize(rcd.pat),
    jsonize(rcd.def), (* jsonize_option<d2exp>("d2expopt", rcd.def), *)
    jsonize(rcd.wtp)  (* jsonize_option<s2exp>("s2expopt", rcd.wtp) *)
  )
  end
end // end of [jsonize_v2aldecl]


implement
jsonize_v2ardecl
  (x0) = let
//
val+V2ARDECL(rcd) = x0
//
in
  node2("v2ardecl", jsonize(rcd.loc), res) where
  val res =
  jsonify("V2ARDECL",
    jsonize(rcd.d2v),
    jsonize(rcd.wth), (* jsonize_option<d2var>("d2varopt", rcd.wth), *)
    jsonize(rcd.res), (* jsonize_option<s2exp>("s2expopt", rcd.res), *)
    jsonize(rcd.ini)  (* jsonize_option<d2exp>("d2expopt", rcd.ini) *)
  )
  end
end // end of [jsonize_v2ardecl]


implement
jsonize_f2undecl
  (x0) = let
//
val+F2UNDECL(rcd) = x0
//
in
  node2("f2undecl", jsonize(rcd.loc), res) where
  val res =
  jsonify("F2UNDECL",
    jsonize(rcd.nam),
    jsonize(rcd.d2c),
    jsonize(rcd.arg), (* jsonize_list<f2arg>("f2arglst", rcd.arg), *)
    jsonize(rcd.res),
    jsonize(rcd.def), (* jsonize_option<d2exp>("d2expopt", rcd.def), *)
    jsonize(rcd.wtp)  (* jsonize_option<s2exp>("s2expopt", rcd.wtp) *)
  )
  end
end // end of [jsonize_f2undecl]
