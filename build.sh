THE_XQ=$PWD/xanadu/srcgen/xats

echo $THE_XQ > .xq
echo "#define x_targetloc \""$THE_XQ"\"" > HATS/x.hats
(cd $THE_XQ && make all libxatsopt)
make
