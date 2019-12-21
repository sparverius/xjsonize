XATSHOMEQ=$PWD/xanadu
XQ=$XATSHOMEQ/srcgen/xats

printf "$XATSHOMEQ" > .xatshome
printf $XQ > .xq
printf "#define x_targetloc \""$XQ"\"" > HATS/x.hats
(cd $XQ && make all libxatsopt)
make

patscc -O2 -cleanaft -DATS_MEMALLOC_LIBC -o xjson xjson.dats -latslib
