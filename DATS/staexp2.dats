#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/staexp0.sats"
#staload "{$x}/SATS/staexp1.sats"
#staload "{$x}/SATS/staexp2.sats"

#staload "./../SATS/json.sats"
#staload "./../SATS/basics.sats"
#staload "./../SATS/symbol.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/stamp0.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/staexp1.sats"
#staload "./../SATS/staexp2.sats"

#staload _ = "./json.dats"
#staload _ = "./staexp0.dats"
#staload _ = "./staexp1.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/staexp0.dats"
#staload _ = "{$XNAME}/DATS/staexp1.dats"
#staload _ = "{$XNAME}/DATS/staexp2.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/filpath.dats"
#staload _ = "{$XARGS}/DATS/staexp0.dats"
#staload _ = "{$XARGS}/DATS/staexp1.dats"
#staload _ = "{$XARGS}/DATS/staexp2.dats"

#include "./global.dats"

implement totype_sort2lst<> = jsonize_sort2lst
implement totype_s2explst<> = jsonize_s2explst
implement totype_s2varlst<> = jsonize_s2varlst
implement totype_s2cstlst<> = jsonize_s2cstlst
implement totype_s2cstopt<> = jsonize_s2cstopt
implement totype_s2expopt<> = jsonize_s2expopt
implement totype_labs2explst<> = jsonize_labs2explst

implement totype_sort2<> = jsonize_sort2
implement totype_t2bas<> = jsonize_t2bas
implement totype_t2abs<> = jsonize_t2abs
implement totype_t2dat<> = jsonize_t2dat
implement totype_s2cst<> = jsonize_s2cst
implement totype_s2var<> = jsonize_s2var
implement totype_s2txt<> = jsonize_s2txt
implement totype_tyrec<> = jsonize_tyrec
implement totype_s2exp<> = jsonize_s2exp
implement totype_labs2exp<> = jsonize_labs2exp
implement totype_s2itm<> = jsonize_s2itm
implement totype_abstdf2<> = jsonize_abstdf2
implement totype_effs2expopt<> = jsonize_effs2expopt
implement totype_fmodenv<> = jsonize_fmodenv
implement totype_fmodenvopt<> = jsonize_fmodenvopt
implement totype_s2xtv<> = jsonize_s2xtv

local

  implement jsonize_val<sort2> = jsonize_sort2
  implement jsonize_val<s2exp> = jsonize_s2exp
  implement jsonize_val<s2var> = jsonize_s2var
  implement jsonize_val<s2cst> = jsonize_s2cst

in

implement jsonize_val<fmodenv> = jsonize_fmodenv
implement(a:type) jsonize_val<sl0abled(a)> = jsonize_sl0abled<a>

implement jsonize_sort2lst(x) = jsonize_list<sort2>(x)
implement jsonize_s2explst(x) = jsonize_list<s2exp>(x)
implement jsonize_s2varlst(x) = jsonize_list<s2var>(x)
implement jsonize_s2cstlst(x) = jsonize_list<s2cst>(x)

implement jsonize_s2cstopt(x) = jsonize_option<s2cst>(x)
implement jsonize_s2expopt(x) = jsonize_option<s2exp>(x)

implement jsonize_val<s2exp> = jsonize_s2exp
implement jsonize_val<labs2exp> = jsonize_labs2exp
implement jsonize_labs2explst(x) = jsonize_list<labs2exp>(x)

implement jsonize_fmodenvopt(x) = jsonize_option<fmodenv>(x)

#include "./macro.dats"

end



implement jsonize_labs2exp(x0) = make_untagged(x0)

implement jsonize_s2xtv(x0) = make_notag(x0)

implement jsonize_fmodenv(x0) = make_notag(x0)

implement jsonize_sort2(s2t0) = make_untagged(s2t0)

implement jsonize_t2bas(s2tb) = make_untagged(s2tb)

implement jsonize_t2abs(x0) = make_notag(x0)

implement jsonize_t2dat(x0) = make_notag(x0)

implement jsonize_s2cst(x0) = make_notag(x0)

implement jsonize_s2var(x0) = make_notag(x0)

implement jsonize_s2txt(s2tx) = make_untagged(s2tx)

implement jsonize_tyrec(knd) = make_untagged(knd)

local

  implement jsonize_val<s2exp> = jsonize_s2exp

in

  implement jsonize_s2exp(s2e0) = make_tagged(s2e0)

end

implement jsonize_s2itm(x0) = make_untagged(x0)

implement jsonize_abstdf2(x0) = make_untagged(x0)

implement jsonize_effs2expopt(x0) = make_untagged(x0)
