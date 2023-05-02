#include "./../HATS/x.hats"
#staload "{$x}/SATS/dynexp2.sats"

#staload "./json.sats"


fun jsonize_sq2arg : jsonize_type(sq2arg)
fun jsonize_sq2arglst : jsonize_type(sq2arglst)
overload jsonize with jsonize_sq2arg
overload jsonize with jsonize_sq2arglst

fun jsonize_tq2arg : jsonize_type(tq2arg)
fun jsonize_tq2arglst : jsonize_type(tq2arglst)
overload jsonize with jsonize_tq2arg
overload jsonize with jsonize_tq2arglst

fun jsonize_d2con : jsonize_type(d2con)
fun jsonize_d2conlst : jsonize_type(d2conlst)
overload jsonize with jsonize_d2con
overload jsonize with jsonize_d2conlst

fun jsonize_d2cst : jsonize_type(d2cst)
fun jsonize_d2cstlst : jsonize_type(d2cstlst)
fun jsonize_d2cstopt : jsonize_type(d2cstopt)
overload jsonize with jsonize_d2cst
overload jsonize with jsonize_d2cstlst
overload jsonize with jsonize_d2cstopt

fun jsonize_d2var : jsonize_type(d2var)
fun jsonize_d2varlst : jsonize_type(d2varlst)
fun jsonize_d2varopt : jsonize_type(d2varopt)
overload jsonize with jsonize_d2var
overload jsonize with jsonize_d2varlst
overload jsonize with jsonize_d2varopt

fun jsonize_d2itm : jsonize_type(d2itm)
fun jsonize_d2itmlst : jsonize_type(d2itmlst)
overload jsonize with jsonize_d2itm
overload jsonize with jsonize_d2itmlst

fun jsonize_d2pitm : jsonize_type(d2pitm)
fun jsonize_d2pitmlst : jsonize_type(d2pitmlst)
overload jsonize with jsonize_d2pitm
overload jsonize with jsonize_d2pitmlst

fun jsonize_d2pat : jsonize_type(d2pat)
fun jsonize_d2patlst : jsonize_type(d2patlst)
overload jsonize with jsonize_d2pat
overload jsonize with jsonize_d2patlst

fun jsonize_f2arg : jsonize_type(f2arg)
fun jsonize_f2arglst : jsonize_type(f2arglst)
overload jsonize with jsonize_f2arg
overload jsonize with jsonize_f2arglst

fun jsonize_ti2arg : jsonize_type(ti2arg)
fun jsonize_ti2arglst : jsonize_type(ti2arglst)
overload jsonize with jsonize_ti2arg
overload jsonize with jsonize_ti2arglst

fun jsonize_d2gua : jsonize_type(d2gua)
fun jsonize_d2gualst : jsonize_type(d2gualst)
overload jsonize with jsonize_d2gua
overload jsonize with jsonize_d2gualst

fun jsonize_d2clau : jsonize_type(d2clau)
fun jsonize_d2claulst : jsonize_type(d2claulst)
overload jsonize with jsonize_d2clau
overload jsonize with jsonize_d2claulst

fun jsonize_d2gpat : jsonize_type(d2gpat)
overload jsonize with jsonize_d2gpat

fun jsonize_d2exp : jsonize_type(d2exp)
fun jsonize_d2explst : jsonize_type(d2explst)
fun jsonize_d2expopt : jsonize_type(d2expopt)
fun jsonize_d2explstopt : jsonize_type(d2explstopt)
overload jsonize with jsonize_d2exp
overload jsonize with jsonize_d2explst
overload jsonize with jsonize_d2expopt
overload jsonize with jsonize_d2explstopt

fun jsonize_d2valdecl : jsonize_type(d2valdecl)
fun jsonize_d2valdeclist : jsonize_type(d2valdeclist)
overload jsonize with jsonize_d2valdecl
overload jsonize with jsonize_d2valdeclist

fun jsonize_d2vardecl : jsonize_type(d2vardecl)
fun jsonize_d2vardeclist : jsonize_type(d2vardeclist)
overload jsonize with jsonize_d2vardecl
overload jsonize with jsonize_d2vardeclist

fun jsonize_d2fundecl : jsonize_type(d2fundecl)
fun jsonize_d2fundeclist : jsonize_type(d2fundeclist)
overload jsonize with jsonize_d2fundecl
overload jsonize with jsonize_d2fundeclist

fun jsonize_d2ecl : jsonize_type(d2ecl)
fun jsonize_d2eclist : jsonize_type(d2eclist)
fun jsonize_d2eclistopt : jsonize_type(d2eclistopt)
overload jsonize with jsonize_d2ecl
overload jsonize with jsonize_d2eclist
overload jsonize with jsonize_d2eclistopt

fun jsonize_impls2cst : jsonize_type(impls2cst)
overload jsonize with jsonize_impls2cst

fun jsonize_impld2cst : jsonize_type(impld2cst)
overload jsonize with jsonize_impld2cst

fun jsonize_st2inv : jsonize_type(st2inv)
fun jsonize_st2qua : jsonize_type(st2qua)
fun jsonize_st2qualst : jsonize_type(st2qualst)
overload jsonize with jsonize_st2inv
overload jsonize with jsonize_st2qua
overload jsonize with jsonize_st2qualst

fun jsonize_d2typ : jsonize_type(d2typ)
fun jsonize_d2typlst : jsonize_type(d2typlst)
overload jsonize with jsonize_d2typ
overload jsonize with jsonize_d2typlst
