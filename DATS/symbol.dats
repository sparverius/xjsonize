#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/xsymbol.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/symbol.sats"

#staload _ = "./json.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/symbol.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/symbol.dats"

#include "./global.dats"

implement totype_val<symbol> = jsonize_symbol

#include "./macro.dats"

#include "./util.dats"

implement jsonize_symbol(x0) = kndat("symbol", JSONstring(x0.name()))
