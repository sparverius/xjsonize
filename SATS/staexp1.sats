#include "./../HATS/x.hats"
#staload "{$x}/SATS/staexp1.sats"

#staload "./json.sats"


fun jsonize_g1exp : jsonize_type(g1exp)
fun jsonize_g1explst : jsonize_type(g1explst)
fun jsonize_g1expopt : jsonize_type(g1expopt)
overload jsonize with jsonize_g1exp
overload jsonize with jsonize_g1explst
overload jsonize with jsonize_g1expopt

fun jsonize_f1unarrow : jsonize_type(f1unarrow)
overload jsonize with jsonize_f1unarrow

fun jsonize_g1marg : jsonize_type(g1marg)
fun jsonize_g1marglst : jsonize_type(g1marglst)
overload jsonize with jsonize_g1marg
overload jsonize with jsonize_g1marglst

fun jsonize_sort1 : jsonize_type(sort1)
fun jsonize_sort1lst : jsonize_type(sort1lst)
fun jsonize_sort1opt : jsonize_type(sort1opt)
overload jsonize with jsonize_sort1
overload jsonize with jsonize_sort1lst
overload jsonize with jsonize_sort1opt

fun jsonize_s1rtcon : jsonize_type(s1rtcon)
fun jsonize_s1rtconlst : jsonize_type(s1rtconlst)
overload jsonize with jsonize_s1rtcon
overload jsonize with jsonize_s1rtconlst

fun jsonize_d1tsort : jsonize_type(d1tsort)
fun jsonize_d1tsortlst : jsonize_type(d1tsortlst)
overload jsonize with jsonize_d1tsort
overload jsonize with jsonize_d1tsortlst

fun jsonize_s1arg : jsonize_type(s1arg)
fun jsonize_s1arglst : jsonize_type(s1arglst)
overload jsonize with jsonize_s1arg
overload jsonize with jsonize_s1arglst

fun jsonize_s1rtdef : jsonize_type(s1rtdef)
overload jsonize with jsonize_s1rtdef

fun jsonize_s1marg : jsonize_type(s1marg)
fun jsonize_s1marglst : jsonize_type(s1marglst)
overload jsonize with jsonize_s1marg
overload jsonize with jsonize_s1marglst

fun jsonize_t1arg : jsonize_type(t1arg)
fun jsonize_t1arglst : jsonize_type(t1arglst)
overload jsonize with jsonize_t1arg
overload jsonize with jsonize_t1arglst

fun jsonize_t1marg : jsonize_type(t1marg)
fun jsonize_t1marglst : jsonize_type(t1marglst)
overload jsonize with jsonize_t1marg
overload jsonize with jsonize_t1marglst

fun jsonize_s1qua : jsonize_type(s1qua)
fun jsonize_s1qualst : jsonize_type(s1qualst)
overload jsonize with jsonize_s1qua
overload jsonize with jsonize_s1qualst

fun jsonize_s1uni : jsonize_type(s1uni)
fun jsonize_s1unilst : jsonize_type(s1unilst)
overload jsonize with jsonize_s1uni
overload jsonize with jsonize_s1unilst

fun jsonize_s1exp : jsonize_type(s1exp)
fun jsonize_s1explst : jsonize_type(s1explst)
fun jsonize_s1expopt : jsonize_type(s1expopt)
overload jsonize with jsonize_s1exp
overload jsonize with jsonize_s1explst
overload jsonize with jsonize_s1expopt


fun{} jsonize_labs1explst : jsonize_type(labs1explst)
overload jsonize with jsonize_labs1explst


fun jsonize_effs1expopt : jsonize_type(effs1expopt)
overload jsonize with jsonize_effs1expopt

fun jsonize_d1atcon : jsonize_type(d1atcon)
fun jsonize_d1atconlst : jsonize_type(d1atconlst)
overload jsonize with jsonize_d1atcon
overload jsonize with jsonize_d1atconlst

fun jsonize_d1atype : jsonize_type(d1atype)
fun jsonize_d1atypelst : jsonize_type(d1atypelst)
overload jsonize with jsonize_d1atype
overload jsonize with jsonize_d1atypelst

fun jsonize_g1nam : jsonize_type(g1nam)
fun jsonize_g1namlst : jsonize_type(g1namlst)
fun jsonize_g1namopt : jsonize_type(g1namopt)
overload jsonize with jsonize_g1nam
overload jsonize with jsonize_g1namlst
overload jsonize with jsonize_g1namopt

//#staload "{$x}/DATS/gmacro1_define.dats"

fun jsonize_g1mac : jsonize_type(g1mac)
//fun jsonize_g1maclst : jsonize_type(g1maclst)
overload jsonize with jsonize_g1mac
//overload jsonize with jsonize_g1maclst
