#include "./../HATS/x.hats"
#staload "{$x}/SATS/dynexp3.sats"

#staload "./json.sats"

fun jsonize_ti3arg : jsonize_type(ti3arg)
overload jsonize with jsonize_ti3arg

fun jsonize_d3pat : jsonize_type(d3pat)
fun jsonize_d3patlst : jsonize_type(d3patlst)
overload jsonize with jsonize_d3pat
overload jsonize with jsonize_d3patlst

fun jsonize_f3arg : jsonize_type(f3arg)
fun jsonize_f3arglst : jsonize_type(f3arglst)
overload jsonize with jsonize_f3arg
overload jsonize with jsonize_f3arglst

fun jsonize_d3gua : jsonize_type(d3gua)
fun jsonize_d3gualst : jsonize_type(d3gualst)
overload jsonize with jsonize_d3gua
overload jsonize with jsonize_d3gualst

fun jsonize_d3clau : jsonize_type(d3clau)
fun jsonize_d3claulst : jsonize_type(d3claulst)
overload jsonize with jsonize_d3clau
overload jsonize with jsonize_d3claulst

fun jsonize_d3gpat : jsonize_type(d3gpat)
overload jsonize with jsonize_d3gpat

fun jsonize_d3exp : jsonize_type(d3exp)
fun jsonize_d3explst : jsonize_type(d3explst)
fun jsonize_d3expopt : jsonize_type(d3expopt)
fun jsonize_d3explstopt : jsonize_type(d3explstopt)
overload jsonize with jsonize_d3exp
overload jsonize with jsonize_d3explst
overload jsonize with jsonize_d3expopt
overload jsonize with jsonize_d3explstopt

fun jsonize_t2pcast : jsonize_type(t2pcast)
overload jsonize with jsonize_t2pcast

fun jsonize_v3aldecl : jsonize_type(v3aldecl)
fun jsonize_v3aldeclist : jsonize_type(v3aldeclist)
overload jsonize with jsonize_v3aldecl
overload jsonize with jsonize_v3aldeclist

fun jsonize_v3ardecl : jsonize_type(v3ardecl)
fun jsonize_v3ardeclist : jsonize_type(v3ardeclist)
overload jsonize with jsonize_v3ardecl
overload jsonize with jsonize_v3ardeclist

fun jsonize_f3undecl : jsonize_type(f3undecl)
fun jsonize_f3undeclist : jsonize_type(f3undeclist)
overload jsonize with jsonize_f3undecl
overload jsonize with jsonize_f3undeclist

fun jsonize_d3ecl : jsonize_type(d3ecl)
fun jsonize_d3eclist : jsonize_type(d3eclist)
fun jsonize_d3eclistopt : jsonize_type(d3eclistopt)
overload jsonize with jsonize_d3ecl
overload jsonize with jsonize_d3eclist
overload jsonize with jsonize_d3eclistopt
