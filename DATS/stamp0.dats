#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/stamp0.sats"
#staload _ = "{$x}/DATS/stamp0.dats"

#staload "./../SATS/json.sats"
#staload "./../SATS/stamp0.sats"
#staload _ = "./json.dats"

(*
#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/stamp0.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/stamp0.dats"
*)

(*
#include "./global.dats"

implement totype_val<stamp> = jsonize_stamp

#include "./macro.dats"

implement jsonize_stamp(x0) = make_notag(x0)
*)

implement jsonize_stamp(x0) =
@("stamp", JSONstring(tostring_uint(stamp2uint(x0))))
(* node("stamp", jsonize(tostring_uint(stamp2uint(x0)))) *)


(*
implement
labify_stamp(x0) = ("stamp", jsonize(tostring_uint(stamp2uint(x0))))
*)
