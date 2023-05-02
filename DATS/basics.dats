#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/xbasics.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/basics.sats"

#staload _ = "./json.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/basics.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/basics.dats"

#include "./global.dats"

implement totype_dctkind<> = jsonize_dctkind
implement totype_valkind<> = jsonize_valkind
implement totype_funkind<> = jsonize_funkind
implement totype_impkind<> = jsonize_impkind
implement totype_funclo2<> = jsonize_funclo2

#include "./macro.dats"

implement jsonize_dctkind(knd) = make_untagged(knd)
implement jsonize_valkind(knd) = make_untagged(knd)
implement jsonize_funkind(knd) = make_untagged(knd)
implement jsonize_impkind(knd) = make_untagged(knd)
implement jsonize_funclo2(knd) = make_untagged(knd)
