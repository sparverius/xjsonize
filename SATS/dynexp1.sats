#include "./../HATS/x.hats"
#staload "{$x}/SATS/dynexp1.sats"

#staload "./json.sats"

fun{} jsonize_labd1patlst : jsonize_type(labd1patlst)
overload jsonize with jsonize_labd1patlst

fun{} jsonize_labd1explst : jsonize_type(labd1explst)
overload jsonize with jsonize_labd1explst


fun jsonize_q1arg : jsonize_type(q1arg)
fun jsonize_q1arglst : jsonize_type(q1arglst)
overload jsonize with jsonize_q1arg
overload jsonize with jsonize_q1arglst

fun jsonize_sq1arg : jsonize_type(sq1arg)
fun jsonize_sq1arglst : jsonize_type(sq1arglst)
overload jsonize with jsonize_sq1arg
overload jsonize with jsonize_sq1arglst

fun jsonize_tq1arg : jsonize_type(tq1arg)
fun jsonize_tq1arglst : jsonize_type(tq1arglst)
overload jsonize with jsonize_tq1arg
overload jsonize with jsonize_tq1arglst

fun jsonize_ti1arg : jsonize_type(ti1arg)
fun jsonize_ti1arglst : jsonize_type(ti1arglst)
overload jsonize with jsonize_ti1arg
overload jsonize with jsonize_ti1arglst

fun jsonize_a1typ : jsonize_type(a1typ)
fun jsonize_a1typlst : jsonize_type(a1typlst)
fun jsonize_a1typlstopt : jsonize_type(a1typlstopt)
overload jsonize with jsonize_a1typ
overload jsonize with jsonize_a1typlst
overload jsonize with jsonize_a1typlstopt

fun jsonize_d1arg : jsonize_type(d1arg)
fun jsonize_d1arglst : jsonize_type(d1arglst)
overload jsonize with jsonize_d1arg
overload jsonize with jsonize_d1arglst

fun jsonize_f1arg : jsonize_type(f1arg)
fun jsonize_f1arglst : jsonize_type(f1arglst)
overload jsonize with jsonize_f1arg
overload jsonize with jsonize_f1arglst

fun jsonize_d1pat : jsonize_type(d1pat)
fun jsonize_d1patlst : jsonize_type(d1patlst)
overload jsonize with jsonize_d1pat
overload jsonize with jsonize_d1patlst

fun jsonize_d1gua : jsonize_type(d1gua)
fun jsonize_d1gualst : jsonize_type(d1gualst)
overload jsonize with jsonize_d1gua
overload jsonize with jsonize_d1gualst

fun jsonize_d1clau : jsonize_type(d1clau)
fun jsonize_d1claulst : jsonize_type(d1claulst)
overload jsonize with jsonize_d1clau
overload jsonize with jsonize_d1claulst

fun jsonize_d1gpat : jsonize_type(d1gpat)
overload jsonize with jsonize_d1gpat

fun jsonize_d1exp : jsonize_type(d1exp)
fun jsonize_d1explst : jsonize_type(d1explst)
fun jsonize_d1expopt : jsonize_type(d1expopt)
overload jsonize with jsonize_d1exp
overload jsonize with jsonize_d1explst
overload jsonize with jsonize_d1expopt

//fun jsonize_f1unarrow : jsonize_type(f1unarrow)
//overload jsonize with jsonize_f1unarrow

fun jsonize_teqd1expopt : jsonize_type(teqd1expopt)
overload jsonize with jsonize_teqd1expopt

fun jsonize_wths1expopt : jsonize_type(wths1expopt)
overload jsonize with jsonize_wths1expopt

fun jsonize_d1valdecl : jsonize_type(d1valdecl)
fun jsonize_d1valdeclist : jsonize_type(d1valdeclist)
overload jsonize with jsonize_d1valdecl
overload jsonize with jsonize_d1valdeclist

fun jsonize_d1vardecl : jsonize_type(d1vardecl)
fun jsonize_d1vardeclist : jsonize_type(d1vardeclist)
overload jsonize with jsonize_d1vardecl
overload jsonize with jsonize_d1vardeclist

fun jsonize_d1fundecl : jsonize_type(d1fundecl)
fun jsonize_d1fundeclist : jsonize_type(d1fundeclist)
overload jsonize with jsonize_d1fundecl
overload jsonize with jsonize_d1fundeclist

//fun jsonize_st1inv : jsonize_type(st1inv)
//overload jsonize with jsonize_st1inv

fun jsonize_d1cstdecl : jsonize_type(d1cstdecl)
fun jsonize_d1cstdeclist : jsonize_type(d1cstdeclist)
overload jsonize with jsonize_d1cstdecl
overload jsonize with jsonize_d1cstdeclist

fun jsonize_d1ecl : jsonize_type(d1ecl)
fun jsonize_d1eclist : jsonize_type(d1eclist)
fun jsonize_d1eclistopt : jsonize_type(d1eclistopt)
overload jsonize with jsonize_d1ecl
overload jsonize with jsonize_d1eclist
overload jsonize with jsonize_d1eclistopt

fun jsonize_abstdf1 : jsonize_type(abstdf1)
overload jsonize with jsonize_abstdf1

fun jsonize_wd1eclseq : jsonize_type(wd1eclseq)
overload jsonize with jsonize_wd1eclseq



fun jsonize_st1inv : jsonize_type(st1inv)
fun jsonize_st1qua : jsonize_type(st1qua)
fun jsonize_st1qualst : jsonize_type(st1qualst)
overload jsonize with jsonize_st1inv
overload jsonize with jsonize_st1qua
overload jsonize with jsonize_st1qualst

fun jsonize_d1typ : jsonize_type(d1typ)
fun jsonize_d1typlst : jsonize_type(d1typlst)
overload jsonize with jsonize_d1typ
overload jsonize with jsonize_d1typlst
