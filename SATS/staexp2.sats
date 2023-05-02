#include "./../HATS/x.hats"
#staload "{$x}/SATS/staexp2.sats"

#staload "./json.sats"

fun jsonize_sort2: jsonize_type(sort2)
fun jsonize_sort2lst: jsonize_type(sort2lst)
overload jsonize with jsonize_sort2
overload jsonize with jsonize_sort2lst

fun labify_sort2: labify_type(sort2)
overload labify with labify_sort2

fun jsonize_t2bas: jsonize_type(t2bas)
overload jsonize with jsonize_t2bas

fun jsonize_t2abs: jsonize_type(t2abs)
overload jsonize with jsonize_t2abs

fun jsonize_t2dat: jsonize_type(t2dat)
overload jsonize with jsonize_t2dat

fun jsonize_s2cst: jsonize_type(s2cst)
fun jsonize_s2cstlst: jsonize_type(s2cstlst)
fun jsonize_s2cstopt: jsonize_type(s2cstopt)
overload jsonize with jsonize_s2cst
overload jsonize with jsonize_s2cstlst
overload jsonize with jsonize_s2cstopt

fun jsonize_s2var: jsonize_type(s2var)
fun jsonize_s2varlst: jsonize_type(s2varlst)
overload jsonize with jsonize_s2var
overload jsonize with jsonize_s2varlst

fun jsonize_tyrec: jsonize_type(tyrec)
overload jsonize with jsonize_tyrec

fun jsonize_s2txt: jsonize_type(s2txt)
overload jsonize with jsonize_s2txt

fun jsonize_s2exp: jsonize_type(s2exp)
fun jsonize_s2explst: jsonize_type(s2explst)
fun jsonize_s2expopt: jsonize_type(s2expopt)
overload jsonize with jsonize_s2exp
overload jsonize with jsonize_s2explst
overload jsonize with jsonize_s2expopt



fun jsonize_s2hnf: jsonize_type(s2hnf)
overload jsonize with jsonize_s2hnf

fun jsonize_labs2exp: jsonize_type(labs2exp)
fun jsonize_labs2explst : jsonize_type(labs2explst)
overload jsonize with jsonize_labs2exp
overload jsonize with jsonize_labs2explst

fun jsonize_abstdf2: jsonize_type(abstdf2)
overload jsonize with jsonize_abstdf2

fun jsonize_effs2expopt: jsonize_type(effs2expopt)
overload jsonize with jsonize_effs2expopt

fun jsonize_s2itm: jsonize_type(s2itm)
overload jsonize with jsonize_s2itm

fun jsonize_fmodenv: jsonize_type(fmodenv)
fun jsonize_fmodenvopt: jsonize_type(fmodenvopt)
overload jsonize with jsonize_fmodenv
overload jsonize with jsonize_fmodenvopt

fun jsonize_s2xtv: jsonize_type(s2xtv)
overload jsonize with jsonize_s2xtv
