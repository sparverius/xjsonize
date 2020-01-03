#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/staexp0.sats"
#staload "{$x}/SATS/staexp1.sats"
#staload "{$x}/SATS/staexp2.sats"
#staload "{$x}/SATS/statyp2.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/staexp2.sats"
#staload "./../SATS/statyp2.sats"

#staload _ = "./json.dats"
#staload _ = "./staexp2.dats"

#staload SYM = "./../SATS/symbol.sats"
#staload LOC = "./../SATS/locinfo.sats"
#staload STM = "./../SATS/stamp0.sats"
#staload LAB = "./../SATS/label0.sats"

overload jsonize with $LOC.jsonize_location
overload jsonize with $SYM.jsonize_symbol
overload jsonize with $STM.jsonize_stamp
overload jsonize with $LAB.jsonize_label


#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/staexp0.dats"
#staload _ = "{$XNAME}/DATS/staexp1.dats"
#staload _ = "{$XNAME}/DATS/statyp2.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/staexp0.dats"
#staload _ = "{$XARGS}/DATS/staexp1.dats"
#staload _ = "{$XARGS}/DATS/statyp2.dats"


#include "./global.dats"

implement totype_t2xtv<> = jsonize_t2xtv
implement totype_t2ypelst<> = jsonize_t2ypelst
implement totype_t2ype<> = jsonize_t2ype
implement totype_labt2ype<> = jsonize_labt2ype
implement totype_labt2ypelst<> = jsonize_labt2ypelst


local
implement jsonize_val<t2ype> = jsonize_t2ype
implement jsonize_val<labt2ype> = jsonize_labt2ype
in
(* implement jsonize_t2ypelst(x) = jsonize_list<t2ype>("t2ypelst", x) *)
implement jsonize_t2ypelst(x) = jsonize_list<t2ype>(x)
implement jsonize_labt2ypelst(x) = jsonize_list<labt2ype>(x)

#include "./macro.dats"
end


implement jsonize_t2xtv(x0) = make_notag(x0)

(*
local

implement
jsonize_val<labt2ype> = jsonize_labt2ype
implement
jsonize_val<t2ype> = jsonize_t2ype
implement
jsonize_val<s2var> = jsonize_s2var

in (* in-of-local *)
*)
//
implement
jsonize_t2ype(x0) = make_tagged(x0)
(*
node("t2ype", res) where
val res =
(
case+
x0.node() of
//
| T2Pbas(sym) =>
  jsonify("T2Pbas", jsonize(sym))
| T2Pcst(s2c) =>
  jsonify("T2Pcst", jsonize(s2c))
| T2Pvar(s2v) =>
  jsonify("T2Pvar", jsonize(s2v))
//
| T2Pxtv(xtv) =>
  let
(*
    val t2p = "..."
*)
    val t2p = t2xtv_get_type(xtv)
  in
    case+
    t2p.node() of
    | T2Pnone0() =>
      (
      jsonify("T2Pxtv", rst)
      where
      {
        val stm = xtv.stamp((*void*))
        val rst = $STM.jsonize_stamp(stm)
      }
      ) : labjsonval
    | _ (* else *) =>
      jsonify("T2Pxtv", rst)
      where
      {
        val rst = jsonize(t2p) : labjsonval
      }

  end
//
| T2Papp(t2p1, t2ps) =>
  jsonify("T2Papp",
    jsonize(t2p1),
    jsonize(t2ps)  (* jsonize_list<t2ype>("t2ypelst", t2ps) *)
  )
| T2Plft(t2p1) =>
  jsonify("T2Plft", jsonize(t2p1))
| T2Plam(s2vs, t2p1) =>
  jsonify("T2Plam",
    jsonize(s2vs), (* jsonize_list<s2var>("s2varlst", s2vs), *)
    jsonize(t2p1)
  )
//
| T2Pfc2(fc2) =>
  jsonify("T2pfc2", node("fc2", jsonize("...")))

| T2Pfun(fc2, npf, arg, res) =>
  jsonify("T2Pfun",
    jsonize(fc2),
    jsonize(npf),
    jsonize(arg), (* jsonize_list<t2ype>("t2ypelst", arg), *)
    jsonize(res)
  )
//
| T2Pexi(s2vs, body) =>
  jsonify("T2Pexi",
    jsonize(s2vs), (* jsonize_list<s2var>("s2varlst", s2vs), *)
    jsonize(body)
  )

| T2Puni(s2vs, body) =>
  jsonify("T2Puni",
    jsonize(s2vs), (* jsonize_list<s2var>("s2varlst", s2vs), *)
    jsonize(body)
  )
//
| T2Ptyext(tnm1, t2ps) =>
  jsonify("T2Ptyext",
    jsonize(tnm1),
    jsonize(t2ps) (* jsonize_list<t2ype>("t2ypelst", t2ps) *)
  )
| T2Ptyrec(knd1, npf2, lt2ps) =>
  jsonify("T2Ptyrec",
    jsonify("knd", jsonize(knd1)),
    jsonize(npf2),
    (* jsonize_list<labt2ype>("labt2ypelst", lt2ps) *)
    jsonize(lt2ps)
  )
//
| T2Pnone0() =>
  jsonify("T2Pnone0")
| T2Pnone1(s2e) =>
  jsonify("T2Pnone1", jsonize(s2e))

//
) : labjsonval
end
*)
(*

end
*)


implement
jsonize_labt2ype(lt2p) = make_untagged(lt2p)
(*
node("labt2ype", res) where
val res =
(
case+ lt2p of
| TLABELED(l0, t2p) =>
  jsonify("TLABELED", jsonize(l0), jsonize(t2p))
) : labjsonval  (* end of [jsonize_labt2ype] *)
end
*)
