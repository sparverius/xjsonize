#include "./../HATS/x.hats"
#staload "{$x}/SATS/xlabel0.sats"

#staload "./json.sats"

fun
jsonize_label : jsonize_type(label)
overload jsonize with jsonize_label
