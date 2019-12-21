#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/basics.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/basics.sats"

#staload _ = "./json.dats"


implement
jsonize_valkind
  (vlk) = @("valkind", JSONstring(res)) where
val res =
(
//
case+ vlk of
| VLKval() => "VLKval"
| VLKvalp() => "VLKvalp"
| VLKvaln() => "VLKvaln"
(*
| VLKmcval() => "VLKprval"
*)
| VLKprval() => "VLKprval"
//
) (* end of [jsonize_valkind] *)
end

implement
jsonize_funkind
  (fnk) = @("funkind", JSONstring(res)) where
val res =
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
) (* end of [jsonize_funkind] *)
end


implement
jsonize_impkind
  (knd) = @("impkind", JSONstring(res)) where
val res =
(
case+ knd of
| IMPprf() => "IMPprf"
| IMPval() => "IMPval"
| IMPfun() => "IMPfun"
| IMPtmp() => "IMPtmp"
| IMPgen() => "IMPgen"
) (* end of [jsonize_impkind] *)
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
