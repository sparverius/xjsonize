#include "./../HATS/x.hats"
#staload "{$x}/SATS/statyp2.sats"

#staload "./json.sats"

fun jsonize_labt2ype: jsonize_type(labt2ype)
overload jsonize with jsonize_labt2ype

fun jsonize_t2ype: jsonize_type(t2ype)
fun jsonize_t2ypelst: jsonize_type(t2ypelst)
overload jsonize with jsonize_t2ype
overload jsonize with jsonize_t2ypelst
