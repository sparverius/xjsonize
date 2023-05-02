#include "./../HATS/x.hats"
#staload "{$x}/SATS/dynexp0.sats"

#staload "./json.sats"

fun{a:type}
jsonize_dl0abeled : jsonize_type(dl0abeled(a))

fun{} jsonize_labd0patlst : jsonize_type(labd0patlst)
overload jsonize with jsonize_labd0patlst

fun{} jsonize_labd0explst : jsonize_type(labd0explst)
overload jsonize with jsonize_labd0explst


fun jsonize_q0arg : jsonize_type(q0arg)
fun jsonize_q0arglst : jsonize_type(q0arglst)
overload jsonize with jsonize_q0arg
overload jsonize with jsonize_q0arglst


fun jsonize_sq0arg : jsonize_type(sq0arg)
fun jsonize_sq0arglst : jsonize_type(sq0arglst)
overload jsonize with jsonize_sq0arg
overload jsonize with jsonize_sq0arglst

fun jsonize_tq0arg : jsonize_type(tq0arg)
fun jsonize_tq0arg_node : jsonize_type(tq0arg_node)
fun jsonize_tq0arglst : jsonize_type(tq0arglst)
overload jsonize with jsonize_tq0arg
overload jsonize with jsonize_tq0arg_node
overload jsonize with jsonize_tq0arglst

fun jsonize_ti0arg : jsonize_type(ti0arg)
fun jsonize_ti0arglst : jsonize_type(ti0arglst)
overload jsonize with jsonize_ti0arg
overload jsonize with jsonize_ti0arglst

fun jsonize_a0typ : jsonize_type(a0typ)
fun jsonize_a0typlst : jsonize_type(a0typlst)
fun jsonize_a0typopt : jsonize_type(a0typopt)
fun jsonize_a0typlstopt : jsonize_type(a0typlstopt)
overload jsonize with jsonize_a0typ
overload jsonize with jsonize_a0typlst
overload jsonize with jsonize_a0typopt
overload jsonize with jsonize_a0typlstopt

fun jsonize_d0arg : jsonize_type(d0arg)
fun jsonize_d0arglst : jsonize_type(d0arglst)
overload jsonize with jsonize_d0arg
overload jsonize with jsonize_d0arglst

fun jsonize_f0arg : jsonize_type(f0arg)
fun jsonize_f0arglst : jsonize_type(f0arglst)
overload jsonize with jsonize_f0arg
overload jsonize with jsonize_f0arglst


fun jsonize_d0pat : jsonize_type(d0pat)
fun jsonize_d0patlst : jsonize_type(d0patlst)
overload jsonize with jsonize_d0pat
overload jsonize with jsonize_d0patlst

fun jsonize_d0pat_RPAREN : jsonize_type(d0pat_RPAREN)
overload jsonize with jsonize_d0pat_RPAREN

fun jsonize_labd0pat_RBRACE : jsonize_type(labd0pat_RBRACE)
overload jsonize with jsonize_labd0pat_RBRACE

fun jsonize_d0clau : jsonize_type(d0clau)
fun jsonize_d0claulst : jsonize_type(d0claulst)
overload jsonize with jsonize_d0clau
overload jsonize with jsonize_d0claulst

fun jsonize_d0gpat : jsonize_type(d0gpat)
overload jsonize with jsonize_d0gpat

fun jsonize_d0exp : jsonize_type(d0exp)
fun jsonize_d0expopt : jsonize_type(d0expopt)
fun jsonize_d0explst : jsonize_type(d0explst)
overload jsonize with jsonize_d0exp
overload jsonize with jsonize_d0expopt
overload jsonize with jsonize_d0explst

fun jsonize_d0exp_RPAREN : jsonize_type(d0exp_RPAREN)
overload jsonize with jsonize_d0exp_RPAREN

fun jsonize_labd0exp_RBRACE : jsonize_type(labd0exp_RBRACE)
overload jsonize with jsonize_labd0exp_RBRACE

fun jsonize_d0exp_THEN : jsonize_type(d0exp_THEN)
overload jsonize with jsonize_d0exp_THEN

fun jsonize_d0exp_ELSE : jsonize_type(d0exp_ELSE)
overload jsonize with jsonize_d0exp_ELSE

fun jsonize_endwhere : jsonize_type(endwhere)
overload jsonize with jsonize_endwhere

fun jsonize_d0eclseq_WHERE : jsonize_type(d0eclseq_WHERE)
overload jsonize with jsonize_d0eclseq_WHERE

fun jsonize_f0unarrow : jsonize_type(f0unarrow)
overload jsonize with jsonize_f0unarrow

fun jsonize_d0gua : jsonize_type(d0gua)
fun jsonize_d0gualst : jsonize_type(d0gualst)
overload jsonize with jsonize_d0gua
overload jsonize with jsonize_d0gualst

fun jsonize_decmodopt : jsonize_type(decmodopt)
overload jsonize with jsonize_decmodopt

fun jsonize_teqd0expopt : jsonize_type(teqd0expopt)
overload jsonize with jsonize_teqd0expopt

fun jsonize_wths0expopt : jsonize_type(wths0expopt)
overload jsonize with jsonize_wths0expopt

fun jsonize_d0valdecl : jsonize_type(d0valdecl)
fun jsonize_d0valdeclist : jsonize_type(d0valdeclist)
overload jsonize with jsonize_d0valdecl
overload jsonize with jsonize_d0valdeclist

fun jsonize_d0vardecl : jsonize_type(d0vardecl)
fun jsonize_d0vardeclist : jsonize_type(d0vardeclist)
overload jsonize with jsonize_d0vardecl
overload jsonize with jsonize_d0vardeclist

fun jsonize_d0fundecl : jsonize_type(d0fundecl)
fun jsonize_d0fundeclist : jsonize_type(d0fundeclist)
overload jsonize with jsonize_d0fundecl
overload jsonize with jsonize_d0fundeclist

fun jsonize_d0cstdecl : jsonize_type(d0cstdecl)
fun jsonize_d0cstdeclist : jsonize_type(d0cstdeclist)
overload jsonize with jsonize_d0cstdecl
overload jsonize with jsonize_d0cstdeclist

fun jsonize_d0ecl : jsonize_type(d0ecl)
fun jsonize_d0eclist : jsonize_type(d0eclist)
overload jsonize with jsonize_d0ecl
overload jsonize with jsonize_d0eclist

fun jsonize_precopt : jsonize_type(precopt)
overload jsonize with jsonize_precopt

fun jsonize_precmod : jsonize_type(precmod)
overload jsonize with jsonize_precmod

fun jsonize_signint : jsonize_type(signint)
overload jsonize with jsonize_signint

fun jsonize_abstdf0 : jsonize_type(abstdf0)
overload jsonize with jsonize_abstdf0

fun jsonize_g0expdef : jsonize_type(g0expdef)
overload jsonize with jsonize_g0expdef

fun jsonize_d0macdef : jsonize_type(d0macdef)
overload jsonize with jsonize_d0macdef

fun jsonize_wd0eclseq : jsonize_type(wd0eclseq)
overload jsonize with jsonize_wd0eclseq


fun jsonize_st0inv : jsonize_type(st0inv)
fun jsonize_st0qua : jsonize_type(st0qua)
fun jsonize_st0qualst : jsonize_type(st0qualst)
overload jsonize with jsonize_st0inv
overload jsonize with jsonize_st0qua
overload jsonize with jsonize_st0qualst

fun jsonize_d0typ : jsonize_type(d0typ)
fun jsonize_d0typlst : jsonize_type(d0typlst)
overload jsonize with jsonize_d0typ
overload jsonize with jsonize_d0typlst
