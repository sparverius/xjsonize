#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/staexp0.sats"
#staload "{$x}/SATS/staexp1.sats"
//#staload "{$x}/DATS/gmacro1_define.dats"

#staload "./../SATS/json.sats"
#staload "./../SATS/symbol.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/staexp1.sats"

#staload _ = "./json.dats"
#staload _ = "./lexing_token.dats"
#staload _ = "./staexp0.dats"

#include "./../HATS/libxnameof.hats"
#staload _ = "{$XNAME}/DATS/staexp0.dats"
#staload _ = "{$XNAME}/DATS/staexp1.dats"

#include "./../HATS/libxargsof.hats"
#staload _ = "{$XARGS}/DATS/staexp0.dats"
#staload _ = "{$XARGS}/DATS/staexp1.dats"

#include "./global.dats"

implement totype_g1marglst<> = jsonize_g1marglst
implement totype_s1arglst<> = jsonize_s1arglst
implement totype_s1explst<> = jsonize_s1explst
implement totype_s1qualst<> = jsonize_s1qualst
implement totype_s1unilst<> = jsonize_s1unilst
implement totype_s1marglst<> = jsonize_s1marglst
implement totype_t1arglst<> = jsonize_t1arglst

implement totype_s1rtconlst<> = jsonize_s1rtconlst
implement totype_d1atconlst<> = jsonize_d1atconlst
implement totype_sort1opt<> = jsonize_sort1opt
implement totype_g1explst<> = jsonize_g1explst
implement totype_g1expopt<> = jsonize_g1expopt
implement totype_d1tsortlst<> = jsonize_d1tsortlst
implement totype_d1atypelst<> = jsonize_d1atypelst
implement totype_t1marglst<> = jsonize_t1marglst
implement totype_sort1lst<> = jsonize_sort1lst
implement totype_s1expopt<> = jsonize_s1expopt
implement totype_labs1explst<> = jsonize_labs1explst

implement totype_g1exp<> = jsonize_g1exp
implement totype_g1marg<> = jsonize_g1marg
implement totype_sort1<> = jsonize_sort1
implement totype_s1rtcon<> = jsonize_s1rtcon
implement totype_d1tsort<> = jsonize_d1tsort
implement totype_s1rtdef<> = jsonize_s1rtdef
implement totype_s1arg<> = jsonize_s1arg
implement totype_s1marg<> = jsonize_s1marg
implement totype_t1arg<> = jsonize_t1arg
implement totype_t1marg<> = jsonize_t1marg
implement totype_s1qua<> = jsonize_s1qua
implement totype_s1uni<> = jsonize_s1uni
implement totype_s1exp<> = jsonize_s1exp
implement totype_effs1expopt<> = jsonize_effs1expopt
implement totype_d1atype<> = jsonize_d1atype
implement totype_d1atcon<> = jsonize_d1atcon

local

implement(a:type) jsonize_val<sl0abled(a)> = jsonize_sl0abled<a>
implement jsonize_val<g1marg> = jsonize_g1marg
implement jsonize_val<s1arg> = jsonize_s1arg
implement jsonize_val<s1exp> = jsonize_s1exp
implement jsonize_val<s1qua> = jsonize_s1qua
implement jsonize_val<s1uni> = jsonize_s1uni
implement jsonize_val<s1marg> = jsonize_s1marg
implement jsonize_val<t1arg> = jsonize_t1arg
implement jsonize_val<s1rtcon> = jsonize_s1rtcon
implement jsonize_val<d1atcon> = jsonize_d1atcon
implement jsonize_val<sort1> = jsonize_sort1
implement jsonize_val<g1exp> = jsonize_g1exp
implement jsonize_val<t1marg> = jsonize_t1marg
implement jsonize_val<s1exp> = jsonize_s1exp
implement jsonize_val<labs1exp> = jsonize_sl0abled<s1exp>
implement jsonize_val<d1tsort> = jsonize_d1tsort
implement jsonize_val<d1atype> = jsonize_d1atype
implement jsonize_val<s1exp> = jsonize_s1exp
implement jsonize_val<labs1exp> = jsonize_sl0abled<s1exp>

in

implement jsonize_g1marglst(x) = jsonize_list<g1marg>(x)
implement jsonize_s1arglst(x) = jsonize_list<s1arg>(x)
implement jsonize_s1explst(x) = jsonize_list<s1exp>(x)
implement jsonize_s1qualst(x) = jsonize_list<s1qua>(x)
implement jsonize_s1unilst(x) = jsonize_list<s1uni>(x)
implement jsonize_s1marglst(x) = jsonize_list<s1marg>(x)
implement jsonize_t1arglst(x) = jsonize_list<t1arg>(x)
implement jsonize_s1rtconlst(x) = jsonize_list<s1rtcon>(x)
implement jsonize_d1atconlst(x) = jsonize_list<d1atcon>(x)
implement jsonize_sort1opt(x) = jsonize_option<sort1>(x)
implement jsonize_g1explst(x) = jsonize_list<g1exp>(x)
implement jsonize_g1expopt(x) = jsonize_option<g1exp>(x)
implement jsonize_d1tsortlst(x) = jsonize_list<d1tsort>(x)
implement jsonize_d1atypelst(x) = jsonize_list<d1atype>(x)
implement jsonize_t1marglst(x) = jsonize_list<t1marg>(x)
implement jsonize_sort1lst(x) = jsonize_list<sort1>(x)
implement jsonize_s1expopt(x) = jsonize_option<s1exp>(x)
implement{} jsonize_labs1explst(x) = jsonize_list<labs1exp>(x)

end

#include "./macro.dats"


implement jsonize_g1exp(x0) = make_tagged(x0)

implement jsonize_g1marg(x0) = make_tagged(x0)

implement jsonize_sort1(x0) = make_tagged(x0)

implement jsonize_s1rtcon(x0) = make_tagged(x0)

implement jsonize_d1tsort(x0) = make_tagged(x0)

implement jsonize_s1rtdef(x0) = make_tagged(x0)

implement jsonize_s1arg(x0) = make_tagged(x0)

implement jsonize_s1marg(x0) = make_tagged(x0)

implement jsonize_t1arg(x0) = make_tagged(x0)

implement jsonize_t1marg(x0) = make_tagged(x0)

implement jsonize_s1qua(x0) = make_tagged(x0)

implement jsonize_s1uni(x0) = make_tagged(x0)

local

  implement jsonize_val<s1exp> = jsonize_s1exp
in

  implement jsonize_s1exp(x0) = make_tagged(x0)

end

implement jsonize_effs1expopt(x0) = make_untagged(x0)

implement jsonize_d1atype(x0) = make_tagged(x0)

implement jsonize_d1atcon(x0) = make_tagged(x0)

//

implement jsonize_val<g1nam> = jsonize_g1nam
implement totype_g1namlst<> = jsonize_g1namlst
implement totype_g1namopt<> = jsonize_g1namopt

implement totype_g1nam<> = jsonize_g1nam

implement jsonize_g1nam(x1) = make_untagged(x1)

implement jsonize_g1namlst(x) = jsonize_list<g1nam>(x)
implement jsonize_g1namopt(x) = jsonize_option<g1nam>(x)


implement jsonize_val<g1mac> = jsonize_g1mac
implement totype_g1mac<> = jsonize_g1mac
implement jsonize_g1mac(x1) = tagged_string("ERR", "G1MAC NOT IMPLEMENTED")
//let
  //val _ = $showtype(x1)
//in
//  make_untagged(x1)
//end
//implement jsonize_g1maclst(x) = jsonize_list<g1mac>(x)
