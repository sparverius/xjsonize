#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/filpath.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/filpath.sats"

#staload _ = "./json.dats"


local
implement jsonize_val<filpath> = jsonize_filpath
in
implement jsonize_filpathopt(x) = jsonize_option<filpath>("filpathopt", x)
end


implement jsonize_filpath
  (x) =
  node("filpath", jsonize(full1))
where
  val full1 = filpath_get_full1(x)
end
