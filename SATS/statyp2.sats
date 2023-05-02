#include "./../HATS/x.hats"
#staload "{$x}/SATS/statyp2.sats"

#staload "./json.sats"

fun jsonize_t2xtv: jsonize_type(t2xtv)
overload jsonize with jsonize_t2xtv

fun jsonize_labt2ype: jsonize_type(labt2ype)
fun jsonize_labt2ypelst: jsonize_type(labt2ypelst)
overload jsonize with jsonize_labt2ype
overload jsonize with jsonize_labt2ypelst

fun jsonize_t2ype: jsonize_type(t2ype)
fun jsonize_t2ypelst: jsonize_type(t2ypelst)
overload jsonize with jsonize_t2ype
overload jsonize with jsonize_t2ypelst
