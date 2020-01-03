#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/dynexp0.sats"
#staload "{$x}/SATS/staexp0.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp0.sats"

#staload "./json.dats"
#staload _ = "./json.dats"
#staload _ = "./lexing_token.dats"
#staload _ = "./staexp0.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/staexp0.dats"
#staload _ = "{$XNAME}/DATS/dynexp0.dats"

#include "./../HATS/libxargsof.hats"
#staload "{$XARGS}/DATS/dynexp0.dats"

#include "./global.dats"

implement totype_a0typlst<> = jsonize_a0typlst
implement totype_a0typopt<> = jsonize_a0typopt
implement totype_a0typlstopt<> = jsonize_a0typlstopt
implement totype_d0patlst<> = jsonize_d0patlst
implement totype_d0gualst<> = jsonize_d0gualst
implement totype_d0cstdeclist<> = jsonize_d0cstdeclist
implement totype_d0arglst<> = jsonize_d0arglst
implement totype_d0explst<> = jsonize_d0explst
implement totype_d0eclist<> = jsonize_d0eclist
implement totype_d0claulst<> = jsonize_d0claulst
implement totype_q0arglst<> = jsonize_q0arglst
implement totype_f0arglst<> = jsonize_f0arglst
implement totype_tq0arglst<> = jsonize_tq0arglst
implement totype_sq0arglst<> = jsonize_sq0arglst
implement totype_ti0arglst<> = jsonize_ti0arglst
implement totype_labd0explst<> = jsonize_labd0explst
implement totype_labd0patlst<> = jsonize_labd0patlst
implement totype_f0undeclist<> = jsonize_f0undeclist
implement totype_v0aldeclist<> = jsonize_v0aldeclist
implement totype_v0ardeclist<> = jsonize_v0ardeclist
implement totype_d0expopt<> = jsonize_d0expopt
(* implement totype_labd0pat<> = jsonize_labd0pat *)
(* implement totype_labd0exp<> = jsonize_labd0exp *)
//implement totype_<dl0abeled> = nameof_dl0abeled<>

implement totype_q0arg<> = jsonize_q0arg
implement totype_a0typ<> = jsonize_a0typ
implement totype_d0arg<> = jsonize_d0arg
implement totype_f0arg<> = jsonize_f0arg
implement totype_sq0arg<> = jsonize_sq0arg
implement totype_tq0arg<> = jsonize_tq0arg
implement totype_ti0arg<> = jsonize_ti0arg
implement totype_d0pat<> = jsonize_d0pat
implement totype_d0clau<> = jsonize_d0clau
implement totype_d0gpat<> = jsonize_d0gpat
implement totype_d0gua<> = jsonize_d0gua
implement totype_d0exp<> = jsonize_d0exp
implement totype_d0ecl<> = jsonize_d0ecl

implement totype_d0pat_RPAREN<> = jsonize_d0pat_RPAREN
implement totype_labd0pat_RBRACE<> = jsonize_labd0pat_RBRACE
implement totype_d0exp_RPAREN<> = jsonize_d0exp_RPAREN
implement totype_labd0exp_RBRACE<> = jsonize_labd0exp_RBRACE
implement totype_d0exp_THEN<> = jsonize_d0exp_THEN
implement totype_d0exp_ELSE<> = jsonize_d0exp_ELSE
implement totype_endwhere<> = jsonize_endwhere
implement totype_d0eclseq_WHERE<> = jsonize_d0eclseq_WHERE
implement totype_f0unarrow<> = jsonize_f0unarrow
implement totype_decmodopt<> = jsonize_decmodopt
implement totype_teqd0expopt<> = jsonize_teqd0expopt
implement totype_wths0expopt<> = jsonize_wths0expopt
implement totype_precopt<> = jsonize_precopt
implement totype_signint<> = jsonize_signint
implement totype_precmod<> = jsonize_precmod
implement totype_abstdf0<> = jsonize_abstdf0
implement totype_g0expdef<> = jsonize_g0expdef
implement totype_d0macdef<> = jsonize_d0macdef
implement totype_wd0eclseq<> = jsonize_wd0eclseq
implement totype_v0aldecl<> = jsonize_v0aldecl
implement totype_v0ardecl<> = jsonize_v0ardecl
implement totype_f0undecl<> = jsonize_f0undecl
implement totype_d0cstdecl<> = jsonize_d0cstdecl




implement jsonize_val<token> = jsonize_token
implement jsonize_val<s0exp> = jsonize_s0exp
implement jsonize_val<sort0> = jsonize_sort0
implement jsonize_val<s0arg> = jsonize_s0arg
implement jsonize_val<t0arg> = jsonize_t0arg
implement jsonize_val<s0marg> = jsonize_s0marg
implement jsonize_val<t0marg> = jsonize_t0marg

local

implement jsonize_val<sq0arg> = jsonize_sq0arg
implement jsonize_val<tq0arg> = jsonize_tq0arg
implement jsonize_val<ti0arg> = jsonize_ti0arg
implement jsonize_val<f0arg> = jsonize_f0arg
implement jsonize_val<s0qua> = jsonize_s0qua
implement jsonize_val<s0exp> = jsonize_s0exp
implement jsonize_val<q0arg> = jsonize_q0arg
implement jsonize_val<d0gua> = jsonize_d0gua
implement jsonize_val<d0ecl> = jsonize_d0ecl
implement jsonize_val<s0exp> = jsonize_s0exp

implement jsonize_val<d0exp> = jsonize_d0exp
implement jsonize_val<i0dnt> = jsonize_i0dnt
implement jsonize_val<s0exp> = jsonize_s0exp
implement jsonize_val<f0arg> = jsonize_f0arg
implement jsonize_val<d0arg> = jsonize_d0arg
implement jsonize_val<a0typ> = jsonize_a0typ
implement jsonize_val<d0pat> = jsonize_d0pat
implement jsonize_val<d0clau> = jsonize_d0clau
implement jsonize_val<f0undecl> = jsonize_f0undecl
implement jsonize_val<v0aldecl> = jsonize_v0aldecl
implement jsonize_val<v0ardecl> = jsonize_v0ardecl

implement jsonize_val<d0cstdecl> = jsonize_d0cstdecl

in

  implement jsonize_val<a0typ> = jsonize_a0typ

  implement jsonize_a0typlstopt(opt) =
  @("a0typlst_node", res) : labjsonval
  where val res =
  (
    case+ opt of
    | None() => jnul()
    | Some(a0ts) => to_jsonval(jsonize(a0ts))
  )
  end

  overload jsonize with jsonize_a0typlstopt of 100
  (* implement jsonize_val<a0typlstopt> = jsonize_a0typlstopt *)


implement jsonize_a0typopt(x) = jsonize_option<a0typ>(x)
implement jsonize_a0typlst(x) = jsonize_list<a0typ>(x)
implement jsonize_d0patlst(x) = jsonize_list<d0pat>(x)
implement jsonize_d0gualst(x) = jsonize_list<d0gua>(x)
implement jsonize_d0cstdeclist(x) = jsonize_list<d0cstdecl>(x)
implement jsonize_d0arglst(x) = jsonize_list<d0arg>(x)
implement jsonize_d0explst(x) = jsonize_list<d0exp>(x)
implement jsonize_d0eclist(x) = jsonize_list<d0ecl>(x)
implement jsonize_d0claulst(x) = jsonize_list<d0clau>(x)
implement jsonize_q0arglst(x) = jsonize_list<q0arg>(x)
implement jsonize_f0arglst(x) = jsonize_list<f0arg>(x)
implement jsonize_tq0arglst(x) = jsonize_list<tq0arg>(x)
implement jsonize_sq0arglst(x) = jsonize_list<sq0arg>(x)
implement jsonize_ti0arglst(x) = jsonize_list<ti0arg>(x)
implement jsonize_f0undeclist(x) = jsonize_list<f0undecl>(x)
implement jsonize_v0aldeclist(x) = jsonize_list<v0aldecl>(x)
implement jsonize_v0ardeclist(x) = jsonize_list<v0ardecl>(x)
implement jsonize_d0expopt(x) = jsonize_option<d0exp>(x)

implement(a:type) jsonize_val<dl0abeled(a)> = jsonize_dl0abeled<a>

implement jsonize_val<labd0exp> = jsonize_dl0abeled<d0exp>
implement jsonize_val<labd0pat> = jsonize_dl0abeled<d0pat>

implement{} jsonize_labd0patlst(x) = jsonize_list<labd0pat>(x)
implement{} jsonize_labd0explst(x) = jsonize_list<labd0exp>(x)


implement jsonize_val<a0typlst> = jsonize_a0typlst

#include "./macro.dats"

implement{a} jsonize_dl0abeled(x0) = make_untagged_list(x0, lst)
where
  val+DL0ABELED(l0, t0, x1) = x0
  val lst = $list{labjsonval}(jsonize(l0), jsonize(t0), jsonize_val<a>(x1))
end

end // end of local


implement jsonize_q0arg(x0) = make_tagged(x0)

implement jsonize_a0typ(x0) = make_tagged(x0)

implement jsonize_d0arg(x0) = make_tagged(x0)


implement jsonize_f0arg(x0) = make_tagged(x0)

implement jsonize_sq0arg(x0) = make_tagged(x0)

implement jsonize_tq0arg(x0) = make_tagged(x0)

implement jsonize_ti0arg(x0) = make_tagged(x0)

local

  implement jsonize_val<d0pat> = jsonize_d0pat

  implement jsonize_val<dl0abeled(d0pat)> = jsonize_dl0abeled<d0pat>

in
  implement jsonize_d0pat(x0) = make_tagged(x0)

  implement jsonize_d0pat_RPAREN(x0) = make_untagged(x0)

  implement jsonize_labd0pat_RBRACE(x0) = make_untagged(x0)

end

implement jsonize_d0clau(x0) = make_tagged(x0)

implement jsonize_d0gpat(x0) = make_tagged(x0)

implement jsonize_d0gua(x0) = make_tagged(x0)

local

  implement jsonize_val<d0exp> = jsonize_d0exp

  implement jsonize_val<dl0abeled(d0exp)> = jsonize_dl0abeled<d0exp>

in

  implement jsonize_d0exp(x0) = make_tagged(x0)

  implement jsonize_d0exp_RPAREN(x0) = make_untagged(x0)

  implement jsonize_labd0exp_RBRACE(x0) = make_untagged(x0)

end

implement jsonize_d0exp_THEN(x0) = make_untagged(x0)

implement jsonize_d0exp_ELSE(x0) = make_untagged(x0)

implement jsonize_endwhere(x0) = make_untagged(x0)

implement jsonize_d0eclseq_WHERE(x0) = make_untagged(x0)

implement jsonize_f0unarrow(x0) = make_untagged(x0)

implement jsonize_decmodopt(x0) = make_untagged(x0)

implement jsonize_teqd0expopt(x0) = make_untagged(x0)

implement jsonize_wths0expopt(x0) = make_untagged(x0)

implement jsonize_d0ecl(x0) = make_tagged(x0)

implement jsonize_precopt(x0) = make_untagged(x0)

implement jsonize_signint(x0) = make_untagged(x0)

implement jsonize_precmod(x0) = make_untagged(x0)

implement jsonize_abstdf0(x0) = make_untagged(x0)

implement jsonize_g0expdef(x0) = make_untagged(x0)

implement jsonize_d0macdef(x0) = make_untagged(x0)

implement jsonize_wd0eclseq(x0) = make_untagged(x0)

implement jsonize_v0aldecl(x0) = make_untagged(x0)

implement jsonize_v0ardecl(x0) = make_untagged(x0)

implement jsonize_f0undecl(x0) = make_untagged(x0)

implement jsonize_d0cstdecl(x0) = make_untagged(x0)
