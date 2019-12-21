#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/stamp0.sats"
#staload _ = "{$x}/DATS/stamp0.dats"

#staload "./../SATS/json.sats"
#staload "./../SATS/stamp0.sats"
#staload _ = "./json.dats"


implement
jsonize_stamp(x0) =
node("stamp", jsonize(tostring_uint(stamp2uint(x0))))


implement
labify_stamp(x0) = ("stamp", jsonize(tostring_uint(stamp2uint(x0))))
