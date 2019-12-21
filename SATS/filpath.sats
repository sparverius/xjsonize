#include "./../HATS/x.hats"
#staload "{$x}/SATS/filpath.sats"

#staload "./json.sats"

(*
implement
fprint_val<filpath> = fprint_filpath_full2
*)

fun jsonize_filpath : jsonize_type(filpath)
fun jsonize_filpathopt : jsonize_type(filpathopt)
overload jsonize with jsonize_filpath
overload jsonize with jsonize_filpathopt
