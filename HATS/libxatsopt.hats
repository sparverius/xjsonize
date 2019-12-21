#include "./x.hats"

(* ****** ****** *)
//
#staload
"{$x}/SATS/label0.sats"
#staload
"{$x}/SATS/stamp0.sats"
#staload
"{$x}/SATS/symbol.sats"
//
(* ****** ****** *)
//
#staload
"{$x}/SATS/filsrch.sats"
//
(* ****** ****** *)
//
#staload
"{$x}/SATS/lexing.sats"
//
#staload
"{$x}/SATS/parsing.sats"
//
#staload
"{$x}/SATS/staexp0.sats"
#staload
"{$x}/SATS/dynexp0.sats"
#staload
"{$x}/SATS/synread.sats"
//
#staload
"{$x}/SATS/trans01.sats"
#staload
"{$x}/SATS/staexp1.sats"
#staload
"{$x}/SATS/dynexp1.sats"
#staload
"{$x}/SATS/tread01.sats"
//
#staload
"{$x}/SATS/trans12.sats"
#staload
"{$x}/SATS/tread12.sats"
//
#staload
"{$x}/SATS/trans23.sats"
#staload
"{$x}/SATS/trans33.sats"
//
#staload
"{$x}/SATS/tread33.sats"
//
#staload
"{$x}/SATS/trans3t.sats"
//
(* ****** ****** *)
//
#staload
GLO =
"{$x}/SATS/global.sats"
//
#staload
ERR =
"{$x}/SATS/xerrory.sats"
//
(* ****** ****** *)
//
#staload
FP0 =
"{$x}/SATS/filpath.sats"
//
  typedef
  fpath_t = $FP0.filpath
  macdef
  dirbase =
  $FP0.filpath_dirbase
  macdef
  fpath_make = $FP0.filpath_make
//
(* ****** ****** *)
//
#staload S2E =
"{$x}/SATS/staexp2.sats"
#staload D2E =
"{$x}/SATS/dynexp2.sats"
//
(* ****** ****** *)
//
#staload
_(*TMP*) =
"{$x}/DATS/staexp0_print.dats"
#staload
_(*TMP*) =
"{$x}/DATS/dynexp0_print.dats"
//
#staload
_(*TMP*) =
"{$x}/DATS/staexp1_print.dats"
#staload
_(*TMP*) =
"{$x}/DATS/dynexp1_print.dats"
//
#staload
_(*TMP*) =
"{$x}/DATS/staexp2_print.dats"
#staload
_(*TMP*) =
"{$x}/DATS/statyp2_print.dats"
#staload
_(*TMP*) =
"{$x}/DATS/dynexp2_print.dats"
//
#staload
_(*TMP*) =
"{$x}/DATS/dynexp3_print.dats"
//
(* ****** ****** *)
//
#staload
_(*TMP*) =
"{$x}/DATS/trans12_envmap.dats"
//
(* ****** ****** *)

(* end of [libxatsopt.hats] *)
