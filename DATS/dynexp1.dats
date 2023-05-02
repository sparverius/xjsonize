#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/staexp0.sats"
#staload "{$x}/SATS/dynexp0.sats"
#staload "{$x}/SATS/staexp1.sats"
#staload "{$x}/SATS/dynexp1.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/filpath.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/stamp0.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp1.sats"
#staload "./../SATS/dynexp1.sats"

#staload _ = "./json.dats"
#staload _ = "./lexing_token.dats"
#staload _ = "./dynexp0.dats"
#staload _ = "./stamp0.dats"
#staload _ = "./staexp0.dats"
#staload _ = "./staexp1.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/staexp0.dats"
#staload _ = "{$XNAME}/DATS/dynexp0.dats"
#staload _ = "{$XNAME}/DATS/staexp1.dats"
#staload _ = "{$XNAME}/DATS/dynexp1.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/staexp0.dats"
#staload _ = "{$XARGS}/DATS/dynexp0.dats"
#staload _ = "{$XARGS}/DATS/staexp1.dats"
#staload _ = "{$XARGS}/DATS/dynexp1.dats"

#include "./global.dats"


implement totype_q1arglst<> = jsonize_q1arglst
implement totype_sq1arglst<> = jsonize_sq1arglst
implement totype_tq1arglst<> = jsonize_tq1arglst
implement totype_ti1arglst<> = jsonize_ti1arglst
implement totype_a1typlst<> = jsonize_a1typlst
implement totype_d1arglst<> = jsonize_d1arglst
implement totype_f1arglst<> = jsonize_f1arglst
implement totype_d1patlst<> = jsonize_d1patlst
implement totype_d1gualst<> = jsonize_d1gualst
implement totype_d1claulst<> = jsonize_d1claulst
implement totype_d1explst<> = jsonize_d1explst
implement totype_d1expopt<> = jsonize_d1expopt
implement totype_d1valdeclist<> = jsonize_d1valdeclist
implement totype_d1vardeclist<> = jsonize_d1vardeclist
implement totype_d1fundeclist<> = jsonize_d1fundeclist
implement totype_d1cstdeclist<> = jsonize_d1cstdeclist
implement totype_d1eclist<> = jsonize_d1eclist
implement totype_d1eclistopt<> = jsonize_d1eclistopt
implement totype_labd1patlst<> = jsonize_labd1patlst
implement totype_labd1explst<> = jsonize_labd1explst
implement totype_a1typlstopt<> = jsonize_a1typlstopt

implement totype_q1arg<> = jsonize_q1arg
implement totype_a1typ<> = jsonize_a1typ
implement totype_d1arg<> = jsonize_d1arg
implement totype_f1arg<> = jsonize_f1arg
implement totype_sq1arg<> = jsonize_sq1arg
implement totype_ti1arg<> = jsonize_ti1arg
implement totype_tq1arg<> = jsonize_tq1arg
implement totype_d1exp<> = jsonize_d1exp
implement totype_d1ecl<> = jsonize_d1ecl
implement totype_d1pat<> = jsonize_d1pat
implement totype_f1unarrow<> = jsonize_f1unarrow
implement totype_teqd1expopt<> = jsonize_teqd1expopt
implement totype_wths1expopt<> = jsonize_wths1expopt
implement totype_d1gua<> = jsonize_d1gua
implement totype_d1clau<> = jsonize_d1clau
implement totype_d1gpat<> = jsonize_d1gpat
implement totype_abstdf1<> = jsonize_abstdf1
implement totype_wd1eclseq<> = jsonize_wd1eclseq
implement totype_d1valdecl<> = jsonize_d1valdecl
implement totype_d1vardecl<> = jsonize_d1vardecl
implement totype_d1fundecl<> = jsonize_d1fundecl
implement totype_d1cstdecl<> = jsonize_d1cstdecl

implement totype_d1typlst<> = jsonize_d1typlst
implement totype_st1qualst<> = jsonize_st1qualst

implement totype_d1typ<> = jsonize_d1typ
implement totype_st1qua<> = jsonize_st1qua
implement totype_st1inv<> = jsonize_st1inv


local

implement jsonize_val<d1exp> = jsonize_d1exp
implement jsonize_val<q1arg> = jsonize_q1arg
implement jsonize_val<d1exp> = jsonize_d1exp
implement jsonize_val<d1ecl> = jsonize_d1ecl
implement jsonize_val<f1arg> = jsonize_f1arg
implement jsonize_val<s1exp> = jsonize_s1exp
implement jsonize_val<d1clau> = jsonize_d1clau
implement jsonize_val<d1ecl> = jsonize_d1ecl
implement jsonize_val<d1exp> = jsonize_d1exp
implement jsonize_val<d1valdecl> = jsonize_d1valdecl
implement jsonize_val<d1vardecl> = jsonize_d1vardecl
implement jsonize_val<d1fundecl> = jsonize_d1fundecl
implement jsonize_val<f1arg> = jsonize_f1arg
implement jsonize_val<ti1arg> = jsonize_ti1arg
implement jsonize_val<tq1arg> = jsonize_tq1arg
implement jsonize_val<sq1arg> = jsonize_sq1arg
implement jsonize_val<d1cstdecl> = jsonize_d1cstdecl
implement jsonize_val<d1gua> = jsonize_d1gua
implement jsonize_val<d1arg> = jsonize_d1arg
implement jsonize_val<a1typ> = jsonize_a1typ
implement jsonize_val<d1pat> = jsonize_d1pat
implement jsonize_val<d1eclist> = jsonize_d1eclist
implement jsonize_val<a1typlst> = jsonize_a1typlst
implement jsonize_val<wd1eclseq> = jsonize_wd1eclseq

in



implement jsonize_q1arglst(x) = jsonize_list<q1arg>(x)
implement jsonize_sq1arglst(x) = jsonize_list<sq1arg>(x)
implement jsonize_tq1arglst(x) = jsonize_list<tq1arg>(x)
implement jsonize_ti1arglst(x) = jsonize_list<ti1arg>(x)
implement jsonize_a1typlst(x) = jsonize_list<a1typ>(x)
implement jsonize_d1arglst(x) = jsonize_list<d1arg>(x)
implement jsonize_f1arglst(x) = jsonize_list<f1arg>(x)
implement jsonize_d1patlst(x) = jsonize_list<d1pat>(x)
implement jsonize_d1gualst(x) = jsonize_list<d1gua>(x)
implement jsonize_d1claulst(x) = jsonize_list<d1clau>(x)
implement jsonize_d1explst(x) = jsonize_list<d1exp>(x)
implement jsonize_d1expopt(x) = jsonize_option<d1exp>(x)
implement jsonize_d1valdeclist(x) = jsonize_list<d1valdecl>(x)
implement jsonize_d1vardeclist(x) = jsonize_list<d1vardecl>(x)
implement jsonize_d1fundeclist(x) = jsonize_list<d1fundecl>(x)
implement jsonize_d1cstdeclist(x) = jsonize_list<d1cstdecl>(x)
implement jsonize_d1eclist(x) = jsonize_list<d1ecl>(x)
implement jsonize_d1eclistopt(x) = jsonize_option<d1eclist>(x)
implement jsonize_a1typlstopt(x) = jsonize_option<a1typlst>(x)

implement(a:type) jsonize_val<dl0abeled(a)> = jsonize_dl0abeled<a>
implement jsonize_val<labd1exp> = jsonize_dl0abeled<d1exp>
implement jsonize_val<labd1pat> = jsonize_dl0abeled<d1pat>
implement{} jsonize_labd1patlst(x) = jsonize_list<labd1pat>(x)
implement{} jsonize_labd1explst(x) = jsonize_list<labd1exp>(x)



#include "./macro.dats"

end

implement jsonize_q1arg(x0) = make_tagged(x0)

implement jsonize_a1typ(x0) = make_tagged(x0)

implement jsonize_d1arg(x0) = make_tagged(x0)

implement jsonize_f1arg(x0) = make_tagged(x0)

implement jsonize_sq1arg(x0) = make_tagged(x0)

implement jsonize_ti1arg(x0) = make_tagged(x0)

implement jsonize_tq1arg(x0) = make_tagged(x0)

local

  implement jsonize_val<d1exp> = jsonize_d1exp

in

  implement jsonize_d1exp(x0) = make_tagged(x0)

end

implement jsonize_d1ecl(x0) = make_tagged(x0)

local

  implement jsonize_val<d1pat> = jsonize_d1pat

in

  implement jsonize_d1pat(x0) = make_tagged(x0)

end

implement jsonize_f1unarrow(x0) = make_untagged(x0)

implement jsonize_teqd1expopt(x0) = make_untagged(x0)

implement jsonize_wths1expopt(x0) = make_untagged(x0)

implement jsonize_d1gua(x0) = make_tagged(x0)

implement jsonize_d1clau(x0) = make_tagged(x0)

implement jsonize_d1gpat(x0) = make_tagged(x0)

implement jsonize_abstdf1(x0) = make_untagged(x0)

implement jsonize_wd1eclseq(x0) = make_untagged(x0)

implement jsonize_d1valdecl(x0) = make_untagged(x0)

implement jsonize_d1vardecl(x0) = make_untagged(x0)

implement jsonize_d1fundecl(x0) = make_untagged(x0)

implement jsonize_d1cstdecl(x0) = make_untagged(x0)

//

implement jsonize_val<d1typ> = jsonize_d1typ
implement jsonize_val<st1qua> = jsonize_st1qua
implement jsonize_val<st1inv> = jsonize_st1inv


implement jsonize_d1typ(x1) = make_tagged(x1)
implement jsonize_st1inv(x1) = make_untagged(x1)
implement jsonize_st1qua(x1) = make_untagged(x1)

implement jsonize_d1typlst(x) = jsonize_list<d1typ>(x)
implement jsonize_st1qualst(x) = jsonize_list<st1qua>(x)
