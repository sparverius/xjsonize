#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/label0.sats"
#staload "{$x}/DATS/label0.dats"

#staload "./../SATS/json.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/symbol.sats"

#staload _ = "./json.dats"


implement
jsonize_label
  (l0) =
node("label", res) where
val res =
(
  case+ label_get_int(l0) of
  | ~None_vt() => (
      case+ label_get_sym(l0) of
      | ~None_vt() => jsonize("None")
      | ~Some_vt(sym) =>
        jsonify("LABsym", jsonize(sym))
    ) : labjsonval
  | ~Some_vt(int) =>
    jsonify("LABint", jsonize(int))
): labjsonval
end
