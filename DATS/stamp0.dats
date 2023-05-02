#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/xstamp0.sats"
#staload _ = "{$x}/DATS/xstamp0.dats"

#staload "./../SATS/json.sats"
#staload "./../SATS/stamp0.sats"
#staload _ = "./json.dats"


#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/stamp0.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/stamp0.dats"

#include "./global.dats"


#include "./macro.dats"

(*
implement jsonize_stamp(x0) = make_notag(x0)
*)

#include "./util.dats"


implement totype_val<stamp> = jsonize_stamp

implement jsonize_val<stamp> = jsonize_stamp

implement totype_stamp<> = jsonize_stamp

implement jsonize_stamp(x0) =
(* @("stamp", JSONstring(tostring_uint(stamp2uint(x0)))) : labjsonval *)
(* @("stamp", *)
(* jval3("stamp", jnul(), JSONstring(tostring_uint(stamp2uint(x0))))) : labjsonval *)

(* jsval3("stamp", jnul(), JSONstring(tostring_uint(stamp2uint(x0)))) *)
kndat("stamp", JSONstring(tostring_uint(stamp2uint(x0))))
