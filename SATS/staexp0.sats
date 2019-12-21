#include "./../HATS/x.hats"
#staload "{$x}/SATS/staexp0.sats"

#staload "./json.sats"

fun jsonize_t0int : jsonize_type(t0int)
fun jsonize_t0intopt : jsonize_type(Option(t0int))
overload jsonize with jsonize_t0int
overload jsonize with jsonize_t0intopt

fun jsonize_t0chr : jsonize_type(t0chr)
overload jsonize with jsonize_t0chr

fun jsonize_t0flt : jsonize_type(t0flt)
overload jsonize with jsonize_t0flt

fun jsonize_t0str : jsonize_type(t0str)
overload jsonize with jsonize_t0str

fun jsonize_i0dnt : jsonize_type(i0dnt)
fun jsonize_i0dntlst : jsonize_type(i0dntlst)
fun jsonize_i0dntopt : jsonize_type(i0dntopt)
overload jsonize with jsonize_i0dnt
overload jsonize with jsonize_i0dntlst
overload jsonize with jsonize_i0dntopt


fun jsonize_l0abl : jsonize_type(l0abl)
overload jsonize with jsonize_l0abl

fun jsonize_s0ymb : jsonize_type(s0ymb)
overload jsonize with jsonize_s0ymb

fun{a:type} jsonize_sl0abled : jsonize_type(sl0abled(a))
overload jsonize with jsonize_sl0abled

fun{} jsonize_labs0explst : jsonize_type(labs0explst)
overload jsonize with jsonize_labs0explst


fun jsonize_sq0eid : jsonize_type(sq0eid)
overload jsonize with jsonize_sq0eid

fun jsonize_dq0eid : jsonize_type(dq0eid)
overload jsonize with jsonize_dq0eid

fun jsonize_g0exp : jsonize_type(g0exp)
fun jsonize_g0explst : jsonize_type(g0explst)
overload jsonize with jsonize_g0exp
overload jsonize with jsonize_g0explst


fun jsonize_g0marg : jsonize_type(g0marg)
fun jsonize_g0marglst : jsonize_type(g0marglst)
overload jsonize with jsonize_g0marg
overload jsonize with jsonize_g0marglst


(*
fun jsonize_g0eidlst : jsonize_type(i0dntlst)
overload jsonize with jsonize_g0eidlst
*)


fun jsonize_sort0 : jsonize_type(sort0)
fun jsonize_sort0lst : jsonize_type(sort0lst)
fun jsonize_sort0opt : jsonize_type(sort0opt)
overload jsonize with jsonize_sort0
overload jsonize with jsonize_sort0lst
overload jsonize with jsonize_sort0opt


fun jsonize_s0arglst : jsonize_type(s0arglst)
overload jsonize with jsonize_s0arglst

fun jsonize_s0rtcon : jsonize_type(s0rtcon)
fun jsonize_s0rtconlst : jsonize_type(s0rtconlst)
overload jsonize with jsonize_s0rtcon
overload jsonize with jsonize_s0rtconlst


fun jsonize_d0tsort : jsonize_type(d0tsort)
fun jsonize_d0tsortlst : jsonize_type(d0tsortlst)
overload jsonize with jsonize_d0tsort
overload jsonize with jsonize_d0tsortlst

fun jsonize_s0rtdef : jsonize_type(s0rtdef)
overload jsonize with jsonize_s0rtdef

fun jsonize_s0arg : jsonize_type(s0arg)
overload jsonize with jsonize_s0arg

fun jsonize_s0marg : jsonize_type(s0marg)
fun jsonize_s0marglst : jsonize_type(s0marglst)
overload jsonize with jsonize_s0marg
overload jsonize with jsonize_s0marglst


fun jsonize_t0arg : jsonize_type(t0arg)
fun jsonize_t0arglst : jsonize_type(t0arglst)
overload jsonize with jsonize_t0arg
overload jsonize with jsonize_t0arglst


fun jsonize_t0marg : jsonize_type(t0marg)
fun jsonize_t0marglst : jsonize_type(t0marglst)
overload jsonize with jsonize_t0marg
overload jsonize with jsonize_t0marglst

fun jsonize_s0qua : jsonize_type(s0qua)
fun jsonize_s0qualst : jsonize_type(s0qualst)
overload jsonize with jsonize_s0qua
overload jsonize with jsonize_s0qualst


fun jsonize_s0uni : jsonize_type(s0uni)
fun jsonize_s0unilst : jsonize_type(s0unilst)
overload jsonize with jsonize_s0uni
overload jsonize with jsonize_s0unilst

fun jsonize_s0exp : jsonize_type(s0exp)
fun jsonize_s0explst : jsonize_type(s0explst)
fun jsonize_s0expopt : jsonize_type(s0expopt)
overload jsonize with jsonize_s0exp
overload jsonize with jsonize_s0explst
overload jsonize with jsonize_s0expopt


fun jsonize_s0exp_RPAREN : jsonize_type(s0exp_RPAREN)
overload jsonize with jsonize_s0exp_RPAREN

fun jsonize_labs0exp_RBRACE : jsonize_type(labs0exp_RBRACE)
overload jsonize with jsonize_labs0exp_RBRACE

fun jsonize_effs0expopt : jsonize_type(effs0expopt)
overload jsonize with jsonize_effs0expopt

fun jsonize_d0atcon : jsonize_type(d0atcon)
fun jsonize_d0atconlst : jsonize_type(d0atconlst)
overload jsonize with jsonize_d0atcon
overload jsonize with jsonize_d0atconlst


fun jsonize_d0atype : jsonize_type(d0atype)
fun jsonize_d0atypelst : jsonize_type(d0atypelst)
overload jsonize with jsonize_d0atype
overload jsonize with jsonize_d0atypelst
