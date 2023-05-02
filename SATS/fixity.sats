#include "./../HATS/x.hats"
#staload "{$x}/SATS/xfixity.sats"

#staload "./json.sats"

fun
jsonize_assoc: jsonize_type(assoc)
overload jsonize with jsonize_assoc

fun
jsonize_prcdv: jsonize_type(prcdv)
overload jsonize with jsonize_prcdv

fun
jsonize_fixty: jsonize_type(fixty)
overload jsonize with jsonize_fixty
