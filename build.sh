#!/bin/sh

XATSHOMEQ="./../xanadu"
XQ="$XATSHOMEQ/srcgen/xats"
# printf "$XATSHOMEQ" > .xatshome
# printf $XQ > .xq
# printf "#define x_targetloc \""$XQ"\"" > HATS/x.hats
(cd $XQ && make all libxatsopt)
make
