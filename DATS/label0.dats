#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/label0.sats"
#staload "{$x}/DATS/label0.dats"

#staload "./../SATS/json.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/symbol.sats"

#staload _ = "./json.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/label0.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/label0.dats"

#include "./global.dats"
#include "./macro.dats"

implement jsonize_label(l0) = make_untagged(l0)
