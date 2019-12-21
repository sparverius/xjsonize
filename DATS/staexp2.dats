#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/staexp0.sats"
#staload "{$x}/SATS/staexp1.sats"
#staload "{$x}/SATS/staexp2.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/basics.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/staexp1.sats"
#staload "./../SATS/staexp2.sats"

#staload _ = "./json.dats"
#staload _ = "./staexp0.dats"
#staload _ = "./staexp1.dats"

#staload SYM = "./../SATS/symbol.sats"
#staload LOC = "./../SATS/locinfo.sats"
#staload STM = "./../SATS/stamp0.sats"
#staload LAB = "./../SATS/label0.sats"

overload jsonize with $LOC.jsonize_location
overload jsonize with $SYM.jsonize_symbol
overload jsonize with $STM.jsonize_stamp

overload jsonize with $LAB.jsonize_label

overload labify with $SYM.labify_symbol


implement(a:type) jsonize_val<sl0abled(a)> = jsonize_sl0abled<a>

local

implement jsonize_val<sort2> = jsonize_sort2
implement jsonize_val<s2exp> = jsonize_s2exp
implement jsonize_val<s2var> = jsonize_s2var
implement jsonize_val<s2cst> = jsonize_s2cst

in

implement jsonize_sort2lst(x) = jsonize_list<sort2>("sort2lst", x)
implement jsonize_s2explst(x) = jsonize_list<s2exp>("s2explst", x)
implement jsonize_s2varlst(x) = jsonize_list<s2var>("s2varlst", x)
implement jsonize_s2cstlst(x) = jsonize_list<s2cst>("s2cstlst", x)

implement jsonize_s2cstopt(x) = jsonize_option<s2cst>("s2cstopt", x)
implement jsonize_s2expopt(x) = jsonize_option<s2exp>("s2expopt", x)

implement jsonize_val<s2exp> = jsonize_s2exp
implement jsonize_val<labs2exp> = jsonize_labs2exp
implement jsonize_labs2explst(x) = jsonize_list<labs2exp>("labs2explst", x)

end



local

implement
jsonize_val<sort2> = jsonize_sort2

in (* in-of-local *)

implement
jsonize_sort2
  (s2t0) =
node("sort2", res) where
val res =
(
case+ s2t0 of
//
| S2Tid(id) =>
  jsonify("S2Tid", jsonize(id))
| S2Tint(i0) =>
  jsonify("S2Tint", jsonize(i0))
| S2Tbas(s2tb) =>
  jsonify("S2Tbas", jsonize(s2tb))
| S2Ttup() =>
  jsonify("S2Ttup")
| S2Ttup(s2ts) =>
  jsonify("S2tup",
    jsonize(s2ts) (* jsonize_list<sort2>("sort2lst", s2ts) *)
  )
| S2Tfun() =>
  jsonify("S2Tfun")
| S2Tfun(s2ts, s2t1) =>
  jsonify("S2Tfun",
    jsonize(s2ts), (* jsonize_list<sort2>("sort2lst", s2ts), *)
    jsonize(s2t1)
  )
| S2Tapp(s2t1, s2ts) =>
  jsonify("S2Tapp",
    jsonize(s2t1),
    jsonize(s2ts) (* jsonize_list<sort2>("sort2lst", s2ts) *)
  )
| S2Tnone0() =>
  jsonify("S2Tnone0")
| S2Tnone1(s1tsrc) =>
  jsonify("S2Tnone1", jsonize(s1tsrc))
) : labjsonval  (* end of [jsonize_sort2] *)
end


implement
labify_sort2
  (s2t0) =
@("sort2", jsonval_labval1(res.0, res.1)) where
val res =
(
case+ s2t0 of
//
| S2Tid(id) =>
  jsonify("S2Tid", jsonize(id))
| S2Tint(i0) =>
  jsonify("S2Tint", jsonize(i0))
| S2Tbas(s2tb) =>
  jsonify("S2Tbas", jsonize(s2tb))
| S2Ttup() =>
  jsonify("S2Ttup")
| S2Ttup(s2ts) =>
  jsonify("S2tup",
    jsonize(s2ts) (* jsonize_list<sort2>("sort2lst", s2ts) *)
  )
| S2Tfun() =>
  jsonify("S2Tfun")
| S2Tfun(s2ts, s2t1) =>
  jsonify("S2fun",
    jsonize(s2ts), (* jsonize_list<sort2>("sort2lst", s2ts), *)
    jsonize(s2t1)
  )
| S2Tapp(s2t1, s2ts) =>
  jsonify("S2app",
    jsonize(s2t1),
    jsonize(s2ts) (* jsonize_list<sort2>("sort2lst", s2ts) *)
  )
| S2Tnone0() =>
  jsonify("S2Tnone0")
| S2Tnone1(s1tsrc) =>
  jsonify("S2Tnone1", jsonize(s1tsrc))
) (* end of [labify_sort2] *)
 : labjsonval
end

end // end of [local]


implement
jsonize_t2bas
  (s2tb) =
node("t2bas", res) where
val res =
(
case+ s2tb of
| T2BASpre(sym) =>
  jsonify("T2BASpre", jsonize(sym))
| T2BASabs(abs) =>
  jsonify("T2BASabs", jsonize(abs))
| T2BASdat(dat) =>
  jsonify("T2BASabs", jsonize(dat))
| T2BASimp(knd, sym) =>
  jsonify("T2BASimp", jsonize(knd), jsonize(sym))
(*

(*
  jsonify("T2BASimp", ("knd", "sym"),
    (
      jsonify("knd", jsonize(knd)), // jsonize(knd),
      jsonize(sym)
    )
  )
*)
  jsonify("T2BASabs",
    JSONlablist($list{labjsonval}(
        ("knd", jsonize(knd)),
        labify(sym)
      )
    )
  )
*)
) : labjsonval
end

implement
jsonize_t2abs(x0) =
(* jsonify("t2abs", jsonize(x0.sym())) *)
node("t2abs", jsonize(x0.sym()))


implement
jsonize_t2dat(x0) =
(* jsonify("t2dat", $SYM.jsonize_symbol(x0.sym())) *)
node("t2dat", $SYM.jsonize_symbol(x0.sym()))


implement
jsonize_s2cst
  (x0) =
  (* jsonify("s2cst", rst) where *)
jsonify("s2cst", jsonize(x0.sym()), jsonize(x0.stamp()))
(*
  node("s2cst", rst) where
    val lst = $list{labjsonval}(
      $SYM.labify_symbol(x0.sym()), $STM.labify_stamp(x0.stamp())
    )
    val rst = JSONlablist(lst)
  end
*)
// (* end of [jsonize_s2cst] *)


implement
jsonize_s2var
  (x0) =
jsonify("s2var", jsonize(x0.sym()), jsonize(x0.stamp()))  : labjsonval
(*
node("s2var", rst) where
    val lst = $list{labjsonval}(
      labify_sort2(x0.sort()),
      $SYM.labify_symbol(x0.sym()),
      $STM.labify_stamp(x0.stamp())
    )
    val rst = JSONlablist(lst)
    (* val jsrt = jsonize(x0.sort()) *)
  end
*)



local

implement
jsonize_val<s2txt> = jsonize_s2txt
implement
jsonize_val<s2exp> = jsonize_s2exp

in (* in-of-local *)

implement
jsonize_s2txt
  (s2tx) =
node("s2txt", res) where
val res =
(
case+ s2tx of
| S2TXTsrt(s2t) =>
  jsonify("S2TXTsrt", jsonize(s2t))
| S2TXTsub(s2v, s2ps) =>
  jsonify("S2TXTsub",
    jsonize(s2v),
    jsonize(s2ps) (* jsonize_list<s2exp>("s2explst", s2ps) *)
  )
//
(*
| S2TXTerr(loc0) => jsonify("S2TXTerr(...)")
*)
//
) : labjsonval  (* end of [jsonize_s2txt] *)
end

end // end of [local]


implement
jsonize_tyrec
  (knd) =
node("tyrec", res) where
val res =
(
case+ knd of
//
| TYRECbox0() =>
  jsonify("TYRECbox0")
| TYRECbox1() =>
  jsonify("TYRECbox1")
//
| TYRECflt0() =>
  jsonify("TYRECflt0")
(*
| TYRECflt1(stm) =>
  jsonize("TYRECflt1", jsonize(stm))
*)
| TYRECflt2(nam) =>
  jsonify("TYRECflt2", jsonize(nam))
//
) : labjsonval  (* end of [jsonize_tyrec] *)
end



local

implement
jsonize_val<s2exp> = jsonize_s2exp
implement
jsonize_val<s2var> = jsonize_s2var
implement
jsonize_val<labs2exp> = jsonize_labs2exp

in (* in-of-local *)

implement
jsonize_s2exp
  (s2e0) =
node("s2exp", res) where
val res =
(
case+
s2e0.node() of
//
| S2Eint(i0) =>
  jsonify("S2Eint", jsonize(i0))
| S2Echr(c0) =>
  jsonify("S2Echr", jsonize(c0))
//
| S2Estr(s0) =>
  jsonify("S2Estr", jsonize(s0))
//
| S2Ecst(s2c) =>
  jsonify("S2Ecst", jsonize(s2c))
| S2Evar(s2v) =>
  jsonify("S2Evar", jsonize(s2v))
//
| S2Extv(xtv) =>
  let
    val s2e = s2xtv_get_sexp(xtv)
  in
    jsonify("S2Extv", jsonize(s2e)) : labjsonval
  end
//
| S2Eapp(s2fn, s2es) =>
  jsonify ("S2Eapp",
    jsonize(s2fn),
    jsonize(s2es) (* jsonize_list<s2exp>("s2explst", s2es) *)
  )
| S2Elam(s2vs, body) =>
  jsonify ("S2Elam",
    jsonize(s2vs), (* jsonize_list<s2var>("s2varlst", s2vs), *)
    jsonize(body)
  )
//
| S2Eany(knd) =>
  jsonify("S2Eany", jsonize(knd))
//
| S2Etop(knd, s2e) =>
  jsonify("S2Eany",
    jsonize(knd),
    jsonize(s2e)
  )
//
| S2Earg(knd, s2e) =>
  jsonify("S2Earg", jsonize(knd), jsonize(s2e))
| S2Eatx(bef, aft) =>
  jsonify("S2Eatx", jsonize(bef), jsonize(aft))
//
| S2Efun(fc2, npf, arg, res) =>
  jsonify("S2Efun",
    jsonize(fc2),
    jsonify("npf", jsonize(npf)), //jsonize(npf),
    jsonize(arg), (* jsonize_list<s2exp>("s2explst", arg), *)
    jsonize(res)
  )
//
| S2Ecimp(loc, s2e) =>
  jsonify("S2Ecimp", jsonize(loc), jsonize(s2e))
| S2Ecprf(loc, s2e) =>
  jsonify("S2Ecprf", jsonize(loc), jsonize(s2e))
| S2Ectcd(loc, s2e) =>
  jsonify("S2Ectcd", jsonize(loc), jsonize(s2e))
| S2Ecast(loc, s2e, s2t) =>
  jsonify("S2Ecast",
    jsonize(loc),
    jsonize(s2e),
    jsonize(s2t)
  )
//
| S2Emet(s2es, body) =>
  jsonify("S2Emet",
    jsonize(s2es), (* jsonize_list<s2exp>("s2explst", s2es), *)
    jsonize(body)
  )
//
| S2Eexi(s2vs, s2ps, body) =>
  jsonify("S2Eexi",
    jsonize(s2vs), (* jsonize_list<s2var>("s2varlst", s2vs), *)
    jsonize(s2ps), (* jsonize_list<s2exp>("s2explst", s2ps), *)
    jsonize(body)
  )
| S2Euni(s2vs, s2ps, body) =>
  jsonify("S2Euni",
    jsonize(s2vs), (* jsonize_list<s2var>("s2varlst", s2vs), *)
    jsonize(s2ps), (* jsonize_list<s2exp>("s2explst", s2ps), *)
    jsonize(body)
  )
//
(*
| S2Elist(s2es) =>
  jsonify("S2Elist", "s2es", jsonize(s2es))
*)
//
| S2Etyrec(knd, npf, ls2es) =>
  jsonify("S2Etyrec",
    jsonize(knd),
    jsonify("npf", jsonize(npf)),
    jsonize(ls2es) (* jsonize_list<labs2exp>("labs2explst", ls2es) *)
  )
//
| S2Etyext(tnm1, s2es) =>
  jsonify("S2Etyext",
    jsonize(tnm1),
    jsonize(s2es) (* jsonize_list<s2exp>("s2explst", s2es) *)
  )
//
| S2Enone0() =>
  jsonify("S2Enone")
| S2Enone1(s1esrc) =>
  jsonify("S2Enone1", jsonize(s1esrc))
) : labjsonval  (* end of [jsonize_s2exp] *)
end

end // end of [local]


implement
jsonize_labs2exp
  (ls2e) =
node("labs2exp", res) where
val res =
(
case+ ls2e of
| SLABELED(l0, s2e) =>
  jsonify("SLABELED",
    jsonize(l0),
    jsonize(s2e)
  )
) : labjsonval  (* end of [jsonize_labs2exp] *)
end


local implement jsonize_val<s2cst> = jsonize_s2cst in

implement
jsonize_s2itm
  (x0) =
node("s2itm", res) where
val res =
(
case+ x0 of
//
| S2ITMvar(s2v) =>
  jsonify("S2ITMvar", jsonize(s2v))
//
| S2ITMcst(s2cs) =>
  jsonify("S2ITMcst",
    jsonize(s2cs) (* jsonize_list<s2cst>("s2cstlst", s2cs) *)
  )
//
| S2ITMfmodenv(fmod) =>
  jsonify("S2ITMcst", jsonize("..."))
) : labjsonval
end

end


implement
jsonize_abstdf2
  (x0) =
node("abstdf2", res) where
val res =
(
case+ x0 of
| ABSTDF2none() =>
  jsonify("ABSTDF2none")
| ABSTDF2some() =>
  jsonify("ABSTDF2some")
| ABSTDF2lteq(s2e) =>
  jsonify("ABSTDF2lteq", jsonize(s2e))
| ABSTDF2eqeq(s2e) =>
  jsonify("ABSTDF2eqeq", jsonize(s2e))
) : labjsonval
end

implement
jsonize_effs2expopt
  (x0) =
node("effs2expopt", res) where
val res =
(
case+ x0 of
| EFFS2EXPnone() =>
  jsonify("EFFS2EXPnone")
| EFFS2EXPsome(s2e) =>
  jsonify("EFFS2EXPsome", jsonize(s2e))
(*
| EFFS2EXPsome(s2f, s2e) =>
  jsonify("EFFS2EXPsome", ("s2f", "s2e"), (jsonize(s2f), jsonize(s2e)))
*)
) : labjsonval  (* end of [jsonize_effs2expopt] *)
end
