reassume ret_list_type_t

local
#staload JSON = "./../SATS/json.sats"
in
implement totype_int<> = $JSON.jsonize_int
implement totype_bool<> = $JSON.jsonize_bool
implement totype_char<> = $JSON.jsonize_char
implement totype_double<> = $JSON.jsonize_double
implement totype_string<> = $JSON.jsonize_string
implement totype_uint<> = $JSON.jsonize_uint
end

local
#staload LOCATION = "./../SATS/locinfo.sats"
in
implement totype_location<> = $LOCATION.jsonize_location
implement totype_loc_t<> = $LOCATION.jsonize_location
end

local
#staload LABEL = "./../SATS/label0.sats"
in
implement totype_label<> = $LABEL.jsonize_label
end

local
#staload SYMBOL = "./../SATS/symbol.sats"
in
implement totype_symbol<> = $SYMBOL.jsonize_symbol
end

local
#staload STAMP = "./../SATS/stamp0.sats"
in
implement totype_stamp<> = $STAMP.jsonize_stamp
end

local
#staload FILPATH = "./../SATS/filpath.sats"
in
implement totype_filpath<> = $FILPATH.jsonize_filpath
implement totype_filpathopt<> = $FILPATH.jsonize_filpathopt
end

local
#staload LEXING = "./../SATS/lexing.sats"
in
implement totype_token<> = $LEXING.jsonize_token
implement totype_tokenopt<> = $LEXING.jsonize_tokenopt
implement totype_tokenlst<> = $LEXING.jsonize_tokenlst
end

local
#staload BAS = "{$x}/SATS/basics.sats"
#staload BAS_JSON = "./../SATS/basics.sats"
in
implement totype_funkind<> = $BAS_JSON.jsonize_funkind
implement totype_valkind<> = $BAS_JSON.jsonize_valkind
implement totype_impkind<> = $BAS_JSON.jsonize_impkind
implement totype_funclo2<> = $BAS_JSON.jsonize_funclo2
end
