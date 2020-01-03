#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/filpath.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/filpath.sats"

#staload _ = "./json.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/filpath.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/filpath.dats"

#include "./global.dats"
#include "./macro.dats"

local

  implement jsonize_val<filpath> = jsonize_filpath

in

  implement jsonize_filpathopt(x) = jsonize_option<filpath>(x)

end

implement jsonize_filpath(x) = make_notag(x)
