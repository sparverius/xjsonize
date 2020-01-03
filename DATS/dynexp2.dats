#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/dynexp1.sats"
#staload "{$x}/SATS/dynexp2.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/label0.sats"

#staload "./../SATS/filpath.sats"
#staload "./../SATS/symbol.sats"
#staload "./../SATS/stamp0.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/dynexp1.sats"
#staload "./../SATS/dynexp2.sats"
#staload "./../SATS/staexp2.sats"

#staload _ = "./json.dats"
#staload _ = "./staexp0.dats"
#staload _ = "./dynexp0.dats"
#staload _ = "./staexp1.dats"
#staload _ = "./dynexp1.dats"
#staload _ = "./staexp2.dats"
#staload _ = "./statyp2.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/staexp0.dats"
#staload _ = "{$XNAME}/DATS/dynexp0.dats"
#staload _ = "{$XNAME}/DATS/staexp1.dats"
#staload _ = "{$XNAME}/DATS/dynexp1.dats"
#staload _ = "{$XNAME}/DATS/staexp2.dats"
#staload _ = "{$XNAME}/DATS/dynexp2.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/staexp0.dats"
#staload _ = "{$XARGS}/DATS/dynexp0.dats"
#staload _ = "{$XARGS}/DATS/staexp1.dats"
#staload _ = "{$XARGS}/DATS/dynexp1.dats"
#staload _ = "{$XARGS}/DATS/staexp2.dats"
#staload _ = "{$XARGS}/DATS/dynexp2.dats"
#staload _ = "{$XARGS}/DATS/statyp2.dats"

#include "./global.dats"

implement totype_sq2arglst<> = jsonize_sq2arglst
implement totype_tq2arglst<> = jsonize_tq2arglst
implement totype_d2conlst<> = jsonize_d2conlst
implement totype_d2cstlst<> = jsonize_d2cstlst
implement totype_d2cstopt<> = jsonize_d2cstopt
implement totype_d2varlst<> = jsonize_d2varlst
implement totype_d2varopt<> = jsonize_d2varopt
implement totype_d2itmlst<> = jsonize_d2itmlst
implement totype_d2pitmlst<> = jsonize_d2pitmlst
implement totype_d2patlst<> = jsonize_d2patlst
implement totype_f2arglst<> = jsonize_f2arglst
implement totype_ti2arglst<> = jsonize_ti2arglst
implement totype_d2gualst<> = jsonize_d2gualst
implement totype_d2claulst<> = jsonize_d2claulst
implement totype_d2explst<> = jsonize_d2explst
implement totype_d2expopt<> = jsonize_d2expopt
implement totype_d2explstopt<> = jsonize_d2explstopt
implement totype_v2aldeclist<> = jsonize_v2aldeclist
implement totype_v2ardeclist<> = jsonize_v2ardeclist
implement totype_f2undeclist<> = jsonize_f2undeclist
implement totype_d2eclist<> = jsonize_d2eclist
implement totype_d2eclistopt<> = jsonize_d2eclistopt

implement totype_d2con<> = jsonize_d2con
implement totype_d2cst<> = jsonize_d2cst
implement totype_d2var<> = jsonize_d2var
implement totype_f2arg<> = jsonize_f2arg
implement totype_d2pat<> = jsonize_d2pat
implement totype_d2exp<> = jsonize_d2exp
implement totype_d2ecl<> = jsonize_d2ecl
implement totype_d2itm<> = jsonize_d2itm
implement totype_d2pitm<> = jsonize_d2pitm
implement totype_sq2arg<> = jsonize_sq2arg
implement totype_tq2arg<> = jsonize_tq2arg
implement totype_ti2arg<> = jsonize_ti2arg
implement totype_impld2cst<> = jsonize_impld2cst
implement totype_impls2cst<> = jsonize_impls2cst
implement totype_d2clau<> = jsonize_d2clau
implement totype_d2gua<> = jsonize_d2gua
implement totype_d2gpat<> = jsonize_d2gpat
implement totype_v2aldecl<> = jsonize_v2aldecl
implement totype_v2ardecl<> = jsonize_v2ardecl
implement totype_f2undecl<> = jsonize_f2undecl


local
implement jsonize_val<sq2arg> = jsonize_sq2arg
implement jsonize_val<tq2arg> = jsonize_tq2arg
implement jsonize_val<d2con> = jsonize_d2con
implement jsonize_val<d2cst> = jsonize_d2cst
implement jsonize_val<d2var> = jsonize_d2var
implement jsonize_val<d2itm> = jsonize_d2itm
implement jsonize_val<d2pitm> = jsonize_d2pitm
implement jsonize_val<d2pat> = jsonize_d2pat
implement jsonize_val<f2arg> = jsonize_f2arg
implement jsonize_val<ti2arg> = jsonize_ti2arg
implement jsonize_val<d2gua> = jsonize_d2gua
implement jsonize_val<d2clau> = jsonize_d2clau
implement jsonize_val<d2exp> = jsonize_d2exp
implement jsonize_val<v2aldecl> = jsonize_v2aldecl
implement jsonize_val<v2ardecl> = jsonize_v2ardecl
implement jsonize_val<f2undecl> = jsonize_f2undecl
implement jsonize_val<d2ecl> = jsonize_d2ecl
in
implement jsonize_sq2arglst(x) = jsonize_list<sq2arg>(x)
implement jsonize_tq2arglst(x) = jsonize_list<tq2arg>(x)
implement jsonize_d2conlst(x) = jsonize_list<d2con>(x)
implement jsonize_d2cstlst(x) = jsonize_list<d2cst>(x)
implement jsonize_d2cstopt(x) = jsonize_option<d2cst>(x)
implement jsonize_d2varlst(x) = jsonize_list<d2var>(x)
implement jsonize_d2varopt(x) = jsonize_option<d2var>(x)
implement jsonize_d2itmlst(x) = jsonize_list<d2itm>(x)
implement jsonize_d2pitmlst(x) = jsonize_list<d2pitm>(x)
implement jsonize_d2patlst(x) = jsonize_list<d2pat>(x)
implement jsonize_f2arglst(x) = jsonize_list<f2arg>(x)
implement jsonize_ti2arglst(x) = jsonize_list<ti2arg>(x)
implement jsonize_d2gualst(x) = jsonize_list<d2gua>(x)
implement jsonize_d2claulst(x) = jsonize_list<d2clau>(x)
implement jsonize_d2explst(x) = jsonize_list<d2exp>(x)
implement jsonize_d2expopt(x) = jsonize_option<d2exp>(x)
implement jsonize_v2aldeclist(x) = jsonize_list<v2aldecl>(x)
implement jsonize_v2ardeclist(x) = jsonize_list<v2ardecl>(x)
implement jsonize_f2undeclist(x) = jsonize_list<f2undecl>(x)
implement jsonize_d2eclist(x) = jsonize_list<d2ecl>(x)

implement jsonize_val<d2eclist> = jsonize_list<d2ecl>
implement jsonize_val<d2explst> = jsonize_d2explst
implement jsonize_d2eclistopt(x) = jsonize_option<d2eclist>(x)
implement jsonize_d2explstopt(x) = jsonize_option<d2explst>(x)


#include "./macro.dats"

end

implement jsonize_d2con(x0) = make_notag(x0)

implement jsonize_d2cst(x0) = make_notag(x0)

implement jsonize_d2var(x0) = make_notag(x0)

implement jsonize_f2arg(x0) = make_tagged(x0)

implement jsonize_d2pat(x0) = make_tagged(x0)

implement jsonize_d2exp(x0) = make_tagged(x0)

implement jsonize_d2ecl(x0) = make_tagged(x0)

implement jsonize_d2itm(x0) = make_untagged(x0)

implement jsonize_d2pitm(x0) = make_untagged(x0)

implement jsonize_sq2arg(x0) = make_notag(x0)

implement jsonize_tq2arg(x0) = make_notag(x0)

implement jsonize_ti2arg(x0) = make_notag(x0)

implement jsonize_impld2cst(x0) = make_untagged(x0)

implement jsonize_impls2cst(x0) = make_untagged(x0)

implement jsonize_d2clau(x0) = make_tagged(x0)

implement jsonize_d2gua(x0) = make_tagged(x0)

implement jsonize_d2gpat(x0) = make_tagged(x0)

implement jsonize_v2aldecl(x0) = make_untagged(x0)

implement jsonize_v2ardecl(x0) = make_untagged(x0)

implement jsonize_f2undecl(x0) = make_untagged(x0)
