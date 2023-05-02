#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/staexp0.sats"
#staload "{$x}/SATS/staexp1.sats"
#staload "{$x}/SATS/staexp2.sats"
#staload "{$x}/SATS/statyp2.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/symbol.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/stamp0.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/staexp2.sats"
#staload "./../SATS/statyp2.sats"

#staload _ = "./json.dats"
#staload _ = "./staexp2.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/staexp0.dats"
#staload _ = "{$XNAME}/DATS/staexp1.dats"
#staload _ = "{$XNAME}/DATS/statyp2.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/staexp0.dats"
#staload _ = "{$XARGS}/DATS/staexp1.dats"
#staload _ = "{$XARGS}/DATS/statyp2.dats"


#include "./global.dats"

implement totype_t2xtv<> = jsonize_t2xtv
implement totype_t2ypelst<> = jsonize_t2ypelst
implement totype_t2ype<> = jsonize_t2ype
implement totype_labt2ype<> = jsonize_labt2ype
implement totype_labt2ypelst<> = jsonize_labt2ypelst


local
implement jsonize_val<t2ype> = jsonize_t2ype
implement jsonize_val<labt2ype> = jsonize_labt2ype
in

implement jsonize_t2ypelst(x) = jsonize_list<t2ype>(x)
implement jsonize_labt2ypelst(x) = jsonize_list<labt2ype>(x)

#include "./macro.dats"

end


implement jsonize_t2xtv(x0) = make_notag(x0)

implement jsonize_t2ype(x0) = make_tagged(x0)

implement jsonize_labt2ype(lt2p) = make_untagged(lt2p)
