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
fun jsonize_f3arglstopt : jsonize_type(f3arglstopt)
overload jsonize with jsonize_f3arg
overload jsonize with jsonize_f3arglst
overload jsonize with jsonize_f3arglstopt

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

fun jsonize_d3valdecl : jsonize_type(d3valdecl)
fun jsonize_d3valdeclist : jsonize_type(d3valdeclist)
overload jsonize with jsonize_d3valdecl
overload jsonize with jsonize_d3valdeclist

fun jsonize_d3vardecl : jsonize_type(d3vardecl)
fun jsonize_d3vardeclist : jsonize_type(d3vardeclist)
overload jsonize with jsonize_d3vardecl
overload jsonize with jsonize_d3vardeclist

fun jsonize_d3fundecl : jsonize_type(d3fundecl)
fun jsonize_d3fundeclist : jsonize_type(d3fundeclist)
overload jsonize with jsonize_d3fundecl
overload jsonize with jsonize_d3fundeclist

fun jsonize_d3ecl : jsonize_type(d3ecl)
fun jsonize_d3eclist : jsonize_type(d3eclist)
fun jsonize_d3eclistopt : jsonize_type(d3eclistopt)
overload jsonize with jsonize_d3ecl
overload jsonize with jsonize_d3eclist
overload jsonize with jsonize_d3eclistopt

///
(*
fun jsonize_t3cst : jsonize_type(t3cst)
fun jsonize_t3cstlst : jsonize_type(t3cstlst)
overload jsonize with jsonize_t3cst
overload jsonize with jsonize_t3cstlst
*)

///
