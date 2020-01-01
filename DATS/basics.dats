#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/basics.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/basics.sats"

#staload _ = "./json.dats"

fun name_valkind(vlk: valkind): string =
(
  case+ vlk of
  | VLKval() => "VLKval"
  | VLKvalp() => "VLKvalp"
  | VLKvaln() => "VLKvaln"
  (*
  | VLKmcval() => "VLKprval"
  *)
  | VLKprval() => "VLKprval"
)

fun data_valkind(vlk: valkind): string =
(
case+ vlk of
| VLKval() => "val"
| VLKvalp() => "val+"
| VLKvaln() => "val-"
(*
| VLKmcval() => "VLKprval"
*)
| VLKprval() => "prval"
)



implement
jsonize_valkind
  (vlk) = //@("valkind", JSONstring(res)) where
  @("valkind", mknode(name, data)) where
val name = name_valkind(vlk)
val data = data_valkind(vlk)

end

fun name_funkind(fnk: funkind): string =
(
//
case+ fnk of
| FNKfn0() => "FNKfn0"
| FNKfnx() => "FNKfnx"
| FNKfn1() => "FNKfn1"
| FNKfun() => "FNKfun"
//
| FNKprfn0() => "FNKprfn0"
| FNKprfn1() => "FNKprfn1"
| FNKprfun() => "FNKprfun"
| FNKpraxi() => "FNKpraxi"
//
| FNKcastfn() => "FNKcastfn"
//
)

fun data_funkind(fnk: funkind): string =
(
//
case+ fnk of
| FNKfn0() => "fn0"
| FNKfnx() => "fnx"
| FNKfn1() => "fn1"
| FNKfun() => "fun"
//
| FNKprfn0() => "prfn0"
| FNKprfn1() => "prfn1"
| FNKprfun() => "prfun"
| FNKpraxi() => "praxi"
//
| FNKcastfn() => "castfn"
//
)

implement
jsonize_funkind
  (fnk) = //@("funkind", JSONstring(res)) where
  @("funkind", mknode(name, data)) where
val name = name_funkind(fnk)
val data = data_funkind(fnk)
end


fun name_impkind(knd:impkind) : string =
(
  case+ knd of
  | IMPprf() => "IMPprf"
  | IMPval() => "IMPval"
  | IMPfun() => "IMPfun"
  | IMPtmp() => "IMPtmp"
  | IMPgen() => "IMPgen"
)

fun data_impkind(knd:impkind) : string =
(
  case+ knd of
  | IMPprf() => "implprf"
  | IMPval() => "implval"
  | IMPfun() => "implement"
  | IMPtmp() => "impltmp"
  | IMPgen() => "implgen"
)


implement
jsonize_impkind
  (knd) = (* @("impkind", JSONstring(res)) where *)
  @("impkind", mknode(name, data)) where
val name = name_impkind(knd)
val data = data_impkind(knd)

end


implement
jsonize_funclo2
  (fc2) = node("funclo2", res) where
  (* @("funclo2", jsonval_labval1(res.0, res.1)) where *)
val res =
(
case+ fc2 of
| FC2fun() => jsonify("FC2fun")
| FC2clo(knd) =>
  jsonify("FC2clo", jsonize(knd))
) : labjsonval
end
