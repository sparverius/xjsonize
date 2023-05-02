#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/staexp0.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/lexing.sats"

#staload "./json.dats"
#staload _ = "./json.dats"
#staload _ = "./lexing_token.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/staexp0.dats"
#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/staexp0.dats"

#include "./global.dats"

implement totype_labs0explst<> = jsonize_labs0explst
implement totype_d0tsortlst<> = jsonize_d0tsortlst
implement totype_d0atypelst<> = jsonize_d0atypelst
implement totype_s0arglst<> = jsonize_s0arglst
implement totype_s0explst<> = jsonize_s0explst
implement totype_s0qualst<> = jsonize_s0qualst
implement totype_s0unilst<> = jsonize_s0unilst
implement totype_s0marglst<> = jsonize_s0marglst
implement totype_t0arglst<> = jsonize_t0arglst
implement totype_s0rtconlst<> = jsonize_s0rtconlst
implement totype_d0atconlst<> = jsonize_d0atconlst
implement totype_sort0opt<> = jsonize_sort0opt
implement totype_g0explst<> = jsonize_g0explst
implement totype_g0marglst<> = jsonize_g0marglst
implement totype_t0marglst<> = jsonize_t0marglst
implement totype_sort0lst<> = jsonize_sort0lst
implement totype_i0dntlst<> = jsonize_i0dntlst
implement totype_i0dntopt<> = jsonize_i0dntopt
implement totype_s0expopt<> = jsonize_s0expopt
implement totype_t0intopt<> = jsonize_t0intopt

implement totype_t0int<> = jsonize_t0int
implement totype_t0chr<> = jsonize_t0chr
implement totype_t0flt<> = jsonize_t0flt
implement totype_t0str<> = jsonize_t0str
implement totype_i0dnt<> = jsonize_i0dnt
implement totype_l0abl<> = jsonize_l0abl
implement totype_s0ymb<> = jsonize_s0ymb
implement totype_g0exp<> = jsonize_g0exp
implement totype_g0exp_THEN<> = jsonize_g0exp_THEN
implement totype_g0exp_ELSE<> = jsonize_g0exp_ELSE
implement totype_g0nam<> = jsonize_g0nam

implement totype_sq0eid<> = jsonize_sq0eid
implement totype_dq0eid<> = jsonize_dq0eid
implement totype_g0marg<> = jsonize_g0marg
implement totype_sort0<> = jsonize_sort0
implement totype_s0rtcon<> = jsonize_s0rtcon
implement totype_d0tsort<> = jsonize_d0tsort
implement totype_s0rtdef<> = jsonize_s0rtdef
implement totype_s0arg<> = jsonize_s0arg
implement totype_s0marg<> = jsonize_s0marg
implement totype_t0arg<> = jsonize_t0arg
implement totype_t0marg<> = jsonize_t0marg
implement totype_s0qua<> = jsonize_s0qua
implement totype_s0uni<> = jsonize_s0uni
implement totype_s0exp<> = jsonize_s0exp
implement totype_s0exp_RPAREN<> = jsonize_s0exp_RPAREN
implement totype_labs0exp_RBRACE<> = jsonize_labs0exp_RBRACE
implement totype_effs0expopt<> = jsonize_effs0expopt
implement totype_d0atype<> = jsonize_d0atype
implement totype_d0atcon<> = jsonize_d0atcon
(* implement totype_labs0exp<> = jsonize_labs0exp *)


implement
(a:type) jsonize_val<sl0abled(a)> = jsonize_sl0abled<a>

local

implement jsonize_val<t0arg> = jsonize_t0arg
implement jsonize_val<i0dnt> = jsonize_i0dnt
implement jsonize_val<s0exp> = jsonize_s0exp

implement jsonize_val<labs0explst> = jsonize_labs0explst
implement jsonize_val<t0marg> = jsonize_t0marg
implement jsonize_val<d0atcon> = jsonize_d0atcon

implement jsonize_val<s0rtcon> = jsonize_s0rtcon

implement jsonize_val<s0arg> = jsonize_s0arg
implement jsonize_val<s0exp> = jsonize_s0exp
implement jsonize_val<s0qua> = jsonize_s0qua
implement jsonize_val<sort0> = jsonize_sort0
implement jsonize_val<t0arg> = jsonize_t0arg
implement jsonize_val<s0uni> = jsonize_s0uni

implement jsonize_val<d0atype> = jsonize_d0atype
implement jsonize_val<s0marg> = jsonize_s0marg
implement jsonize_val<g0marg> = jsonize_g0marg
implement jsonize_val<t0int> = jsonize_t0int
implement jsonize_val<d0tsort> = jsonize_d0tsort
implement jsonize_val<d0atype> = jsonize_d0atype
implement jsonize_val<g0exp> = jsonize_g0exp
implement jsonize_val<g0exp_THEN> = jsonize_g0exp_THEN
implement jsonize_val<g0exp_ELSE> = jsonize_g0exp_ELSE

in

implement{} jsonize_labs0explst(x) = jsonize_list<labs0exp>(x)
implement jsonize_d0tsortlst(x) = jsonize_list<d0tsort>(x)
implement jsonize_d0atypelst(x) = jsonize_list<d0atype>(x)
implement jsonize_s0arglst(x) = jsonize_list<s0arg>(x)
implement jsonize_s0explst(x) = jsonize_list<s0exp>(x)
implement jsonize_s0qualst(x) = jsonize_list<s0qua>(x)
implement jsonize_s0unilst(x) = jsonize_list<s0uni>(x)
implement jsonize_s0marglst(x) = jsonize_list<s0marg>(x)
implement jsonize_t0arglst(x) = jsonize_list<t0arg>(x)
implement jsonize_s0rtconlst(x) = jsonize_list<s0rtcon>(x)
implement jsonize_d0atconlst(x) = jsonize_list<d0atcon>(x)
implement jsonize_sort0opt(x) = jsonize_option<sort0>(x)
implement jsonize_g0explst(x) = jsonize_list<g0exp>(x)
implement jsonize_g0marglst(x) = jsonize_list<g0marg>(x)
implement jsonize_t0marglst(x) = jsonize_list<t0marg>(x)
implement jsonize_sort0lst(x) = jsonize_list<sort0>(x)
implement jsonize_i0dntlst(x) = jsonize_list<i0dnt>(x)
implement jsonize_i0dntopt(x) = jsonize_option<i0dnt>(x)
implement jsonize_s0expopt(x) = jsonize_option<s0exp>(x)
implement jsonize_t0intopt(x) = jsonize_option<t0int>(x)

end


#include "./macro.dats"


implement jsonize_t0int(x0) = make_tagged(x0)

implement jsonize_t0chr(x0) = make_tagged(x0)

implement jsonize_t0flt(x0) = make_tagged(x0)

implement jsonize_t0str(x0) = make_tagged(x0)

implement jsonize_i0dnt(x0) = make_tagged(x0)

implement jsonize_l0abl(l0) = make_tagged(l0)

implement jsonize_s0ymb(x0) = make_tagged(x0)

implement jsonize_sq0eid(x0) = make_untagged(x0)

implement jsonize_dq0eid(x0) = make_untagged(x0)

implement jsonize_g0exp(x0) = make_tagged(x0)

//implement jsonize_g0exp_THEN(x0) = make_tagged(x0)
//implement jsonize_g0exp_ELSE(x0) = make_tagged(x0)

implement jsonize_g0marg(x0) = make_tagged(x0)

implement jsonize_sort0(x0) = make_tagged(x0)

implement jsonize_s0rtcon(x0) = make_tagged(x0)

implement jsonize_d0tsort(x0) = make_tagged(x0)

implement jsonize_s0rtdef(x0) = make_tagged(x0)

implement jsonize_s0arg(x0) = make_tagged(x0)

implement jsonize_s0marg(x0) = make_tagged(x0)

implement jsonize_t0arg(x0) = make_tagged(x0)

implement jsonize_t0marg(x0) = make_tagged(x0)

implement jsonize_s0qua(x0) = make_tagged(x0)

implement jsonize_s0uni(x0) = make_tagged(x0)

implement{a} jsonize_sl0abled(x0) = make_untagged_list(x0, lst)
where
  val+SL0ABLED(l0, t0, x1) = x0
  val lst = $list{labjsonval}(jsonize(l0), jsonize(t0), jsonize_val<a>(x1))
end

local

  implement jsonize_val<s0exp> = jsonize_s0exp

in

  implement jsonize_s0exp(x0) = make_tagged(x0)

  implement jsonize_s0exp_RPAREN(x0) = make_untagged(x0)

  implement jsonize_labs0exp_RBRACE(x0) = make_untagged(x0)

end

implement jsonize_effs0expopt(x0) = make_untagged(x0)

implement jsonize_d0atype(x0) = make_tagged(x0)

implement jsonize_d0atcon(x0) = make_tagged(x0)

//


implement jsonize_val<g0nam> = jsonize_g0nam
implement jsonize_val<g0exp_THEN> = jsonize_g0exp_THEN
implement jsonize_val<g0exp_ELSE> = jsonize_g0exp_ELSE

implement totype_g0namlst<> = jsonize_g0namlst

implement totype_g0nam<> = jsonize_g0nam
implement totype_g0exp_THEN<> = jsonize_g0exp_THEN
implement totype_g0exp_ELSE<> = jsonize_g0exp_ELSE

implement jsonize_g0nam(x0) = make_tagged(x0)
implement jsonize_g0exp_THEN(x0) = make_untagged(x0)
implement jsonize_g0exp_ELSE(x0) = make_untagged(x0)

implement jsonize_g0namlst(x) = jsonize_list<g0nam>(x)
