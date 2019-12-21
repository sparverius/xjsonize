#include "./../HATS/x.hats"
#staload "{$x}/SATS/symbol.sats"

#staload "./json.sats"

fun
jsonize_symbol : jsonize_type(symbol)
overload jsonize with jsonize_symbol

fun
labify_symbol : labify_type(symbol)
overload labify with labify_symbol
