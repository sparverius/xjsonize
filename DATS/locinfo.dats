#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/locinfo.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/locinfo.sats"

#staload _ = "./json.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/locinfo.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/locinfo.dats"

#include "./global.dats"

implement totype_val<location> = jsonize_location

#include "./macro.dats"

implement jsonize_location(loc) = make_notag(loc)

implement jsonize_loc_t(loc) = make_notag(loc)
