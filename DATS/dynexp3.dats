#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/dynexp1.sats"
#staload "{$x}/SATS/dynexp2.sats"
#staload "{$x}/SATS/dynexp3.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/filpath.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp1.sats"
#staload "./../SATS/dynexp1.sats"
#staload "./../SATS/statyp2.sats"
#staload "./../SATS/staexp2.sats"
#staload "./../SATS/dynexp2.sats"
#staload "./../SATS/dynexp3.sats"

#staload _ = "./json.dats"
#staload _ = "./dynexp0.dats"
#staload _ = "./staexp1.dats"
#staload _ = "./dynexp1.dats"
#staload _ = "./statyp2.dats"
#staload _ = "./staexp2.dats"
#staload _ = "./dynexp2.dats"


#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/staexp0.dats"
#staload _ = "{$XNAME}/DATS/dynexp0.dats"
#staload _ = "{$XNAME}/DATS/staexp1.dats"
#staload _ = "{$XNAME}/DATS/dynexp1.dats"
#staload _ = "{$XNAME}/DATS/statyp2.dats"
#staload _ = "{$XNAME}/DATS/staexp2.dats"
#staload _ = "{$XNAME}/DATS/dynexp2.dats"
#staload _ = "{$XNAME}/DATS/dynexp3.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/staexp0.dats"
#staload _ = "{$XARGS}/DATS/dynexp0.dats"
#staload _ = "{$XARGS}/DATS/staexp1.dats"
#staload _ = "{$XARGS}/DATS/dynexp1.dats"
#staload _ = "{$XARGS}/DATS/staexp2.dats"
#staload _ = "{$XARGS}/DATS/dynexp2.dats"
#staload _ = "{$XARGS}/DATS/dynexp3.dats"

#include "./global.dats"

implement totype_d3claulst<> = jsonize_d3claulst
implement totype_f3arglst<> = jsonize_f3arglst
implement totype_d3gualst<> = jsonize_d3gualst
implement totype_v3aldeclist<> = jsonize_v3aldeclist
implement totype_v3ardeclist<> = jsonize_v3ardeclist
implement totype_f3undeclist<> = jsonize_f3undeclist
implement totype_d3eclist<> = jsonize_d3eclist
implement totype_d3eclistopt<> = jsonize_d3eclistopt
implement totype_d3explst<> = jsonize_d3explst
implement totype_d3explstopt<> = jsonize_d3explstopt
implement totype_d3expopt<> = jsonize_d3expopt
implement totype_d3patlst<> = jsonize_d3patlst

implement totype_d3pat<> = jsonize_d3pat
implement totype_f3arg<> = jsonize_f3arg
implement totype_d3exp<> = jsonize_d3exp
implement totype_d3gua<> = jsonize_d3gua
implement totype_d3clau<> = jsonize_d3clau
implement totype_d3gpat<> = jsonize_d3gpat
implement totype_ti3arg<> = jsonize_ti3arg
implement totype_d3ecl<> = jsonize_d3ecl
implement totype_t2pcast<> = jsonize_t2pcast
implement totype_v3aldecl<> = jsonize_v3aldecl
implement totype_v3ardecl<> = jsonize_v3ardecl
implement totype_f3undecl<> = jsonize_f3undecl

///
implement totype_t3cst<> = jsonize_t3cst
implement totype_t3cstlst<> = jsonize_t3cstlst
///

local
implement jsonize_val<d3ecl> = jsonize_d3ecl
implement jsonize_val<d3clau> = jsonize_d3clau
implement jsonize_val<f3arg> = jsonize_f3arg
implement jsonize_val<d3gua> = jsonize_d3gua
implement jsonize_val<v3aldecl> = jsonize_v3aldecl
implement jsonize_val<v3ardecl> = jsonize_v3ardecl
implement jsonize_val<f3undecl> = jsonize_f3undecl
implement jsonize_val<d3exp> = jsonize_d3exp
implement jsonize_val<d3pat> = jsonize_d3pat
//
implement jsonize_val<d3explst> = jsonize_d3explst
implement jsonize_val<d3eclist> = jsonize_d3eclist

///
implement jsonize_val<t3cst> = jsonize_t3cst
///

in
implement jsonize_d3eclist(x) = jsonize_list<d3ecl>(x)
implement jsonize_d3claulst(x) = jsonize_list<d3clau>(x)
implement jsonize_f3arglst(x) = jsonize_list<f3arg>(x)
implement jsonize_d3gualst(x) = jsonize_list<d3gua>(x)
implement jsonize_v3aldeclist(x) = jsonize_list<v3aldecl>(x)
implement jsonize_v3ardeclist(x) = jsonize_list<v3ardecl>(x)
implement jsonize_f3undeclist(x) = jsonize_list<f3undecl>(x)
implement jsonize_d3explst(x) = jsonize_list<d3exp>(x)
implement jsonize_d3expopt(x) = jsonize_option<d3exp>(x)
implement jsonize_d3patlst(x) = jsonize_list<d3pat>(x)

implement jsonize_d3explstopt(x) = jsonize_option<d3explst>(x)
implement jsonize_d3eclistopt(x) = jsonize_option<d3eclist>(x)

implement jsonize_t3cstlst(x) = jsonize_list<t3cst>(x)

#include "./macro.dats"

end


implement jsonize_d3pat(x0) = make_tagged(x0)

implement jsonize_f3arg(x0) = make_tagged(x0)

implement jsonize_d3exp(x0) = make_tagged(x0)

implement jsonize_d3gua(x0) = make_tagged(x0)

implement jsonize_d3clau(x0) = make_tagged(x0)

implement jsonize_d3gpat(x0) = make_tagged(x0)

local

  implement jsonize_val<t2ype> = jsonize_t2ype

in

  implement jsonize_ti3arg(x0) = make_untagged(x0)

end

implement jsonize_d3ecl(x0) = make_tagged(x0)

implement jsonize_t2pcast(x0) = make_untagged(x0)

implement jsonize_v3aldecl(x0) = make_untagged(x0)

implement jsonize_v3ardecl(x0) = make_untagged(x0)

implement jsonize_f3undecl(x0) = make_untagged(x0)


///
implement jsonize_t3cst(x0) = make_untagged(x0)
///
