#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/symbol.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/symbol.sats"

#staload _ = "./json.dats"


implement
jsonize_symbol(x0) = @("symbol", JSONstring(x0.name())) : labjsonval
(* @("symbol", jsonval_labval1("name", JSONstring(x0.name()))) : labjsonval *)
  (* node("symbol", jsonize(x0.name())) *)

(*
implement
labify_symbol(x0) = ("symbol", jsonize(x0.name()))
*)
