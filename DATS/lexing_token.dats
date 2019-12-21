#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"

#include "./../HATS/libxatsopt.hats"

#staload "./../SATS/json.sats"
#staload _ = "./json.dats"

#staload "./../SATS/lexing.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/basics.sats"

#staload SYM_J = "./../SATS/symbol.sats"

overload jsonize with $SYM_J.jsonize_symbol

local

implement jsonize_val<token> = jsonize_token

in

implement{} jsonize_tokenopt(x) = jsonize_option<token>("tokenopt", x)
implement{} jsonize_tokenlst(x) = jsonize_list<token>("tokenlst", x)

end

implement
jsonize_tnode(tnd) =
@("tnode", res): labjsonval
where
val res =
(
case+ tnd of
//
| T_EOF() => jstr("EOF")
| T_ERR() => jstr("ERR")
//
| T_EOL() => jstr("EOL")
//
| T_BLANK(x) =>
  labjson("BLANK", x)
//
| T_CLNLT(x) =>
  labjson("CLNLT", x)
| T_DOTLT(x) =>
  labjson("DOTLT", x)
//
| T_IDENT_alp(x) =>
  labjson("IDENT_alp", x)
| T_IDENT_sym(x) =>
  labjson("IDENT_sym", x)
//
| T_IDENT_srp(x) =>
  labjson("IDENT_srp", x)
| T_IDENT_dlr(x) =>
  labjson("IDENT_dlr", x)
//
| T_IDENT_qual(x) =>
  labjson("IDENT_qual", x)
//
| T_INT1(rep) =>
  labjson("INT1", rep)
| T_INT2(base, rep) =>
  to_jsonval (jsonify("INT3", jsonize(base), jsonize(rep)))
| T_INT3(base, rep, k0(*sfx*)) =>
  to_jsonval(jsonify("INT3", jsonize(base), jsonize(rep), jsonize(k0)))
//
| T_FLOAT1(rep) =>
  to_jsonval(jsonify("FLOAT1", jsonize(rep)))
| T_FLOAT2(base, rep) =>
  to_jsonval(jsonify("FLOAT2", jsonize(base), jsonize(rep)))

| T_FLOAT3(base, rep, k0(*sfx*)) =>
  to_jsonval(jsonify("FLOAT3",
    jsonize(base),
    jsonize(rep),
    jsonize(k0)
  ))
//
(*
| T_CHAR(chr) =>
  let
    val chr = int2char0(chr)
  in
    jsonify("CHAR"), jnul()) // chr, ")")
  end
*)
| T_CHAR_nil(rep) =>
  to_jsonval(jsonify("CHAR_nil", jsonize(rep)))
| T_CHAR_char(rep) =>
  to_jsonval(jsonify("CHAR_char", jsonize(rep)))
| T_CHAR_slash(rep) =>
  to_jsonval(jsonify("CHAR_slash", jsonize(rep)))
//
| T_STRING_closed(str) =>
  to_jsonval(jsonify("STRING_closed", jsonize(str)))
| T_STRING_unclsd(str) =>
  to_jsonval(jsonify("STRING_unclsd", jsonize(str)))
//
(*
| T_CDATA(cdata, asz) => jsonify(("CDATA(...)")
*)
//
| T_SPECHAR(c) =>
  to_jsonval(jsonify("SPECHAR", jsonize(int2char0(c))))
//
| T_COMMENT_line(init, content) =>
  to_jsonval(jsonify("T_COMMENT_line", jsonize(init), jsonize(content)))

| T_COMMENT_rest(init, content) =>
  to_jsonval(jsonify("T_COMMENT_rest", jsonize(init), jsonize(content)))
| T_COMMENT_cblock(level, content) =>
  to_jsonval(jsonify("T_COMMENT_cblock", jsonize(level), jsonize(content)))
| T_COMMENT_mlblock(level, content) =>
  to_jsonval(jsonify("T_COMMENT_mlblock", jsonize(level), jsonize(content)))
//
| T_AT() => jstr("AT")
//
| T_BAR() => jstr("BAR")
| T_CLN() => jstr("CLN")
| T_DOT() => jstr("DOT")
//
| T_EQ() => jstr("EQ")
//
| T_LT() => jstr("LT")
| T_GT() => jstr("GT")
//
| T_DLR() => jstr("DLR")
| T_SRP() => jstr("SRP")
//
| T_EQLT() => jstr("EQLT")
| T_EQGT() => jstr("EQGT")
//
| T_LTGT() => jstr("LTGT")
| T_GTLT() => jstr("GTLT")
//
| T_MSLT() => jstr("MSLT")
(*
| T_MSGT() => jstr("MSGT")
| T_MSLTGT() => jstr("MSLTGT")
*)
//
(*
| T_DOTLT() => jstr("DOTLT")
*)
| T_GTDOT() => jstr("GTDOT")
//
| T_COMMA() => jstr("COMMA")
| T_SMCLN() => jstr("SMCLN")
//
| T_BSLASH() => jstr("BSLASH")
//
| T_LPAREN() => jstr("LPAREN")
| T_RPAREN() => jstr("RPAREN")
| T_LBRACE() => jstr("LBRACE")
| T_RBRACE() => jstr("RBRACE")
//
| T_LBRACK() => jstr("LBRACK")
| T_RBRACK() => jstr("RBRACK")
//
| T_EXISTS(knd) =>
  to_jsonval(jsonify("EXISTS", jsonize(knd)))
//
| T_TUPLE(knd) =>
  to_jsonval(jsonify("TUPLE", jsonize(knd)))
| T_RECORD(knd) =>
  to_jsonval(jsonify("RECORD", jsonize(knd)))
(*
| T_STRUCT() => jsonize("STRUCT")
*)
//
| T_AS() => jstr("AS")
//
| T_OF() => jstr("OF")
//
| T_OP() => jstr("OP")
//
| T_OP_par() => jstr("OP_par")
| T_OP_sym(id) =>
  to_jsonval(jsonify("OP_sym", jsonize(id)))
//
| T_IN() => jstr("IN")
//
| T_AND() => jstr("AND")
| T_END() => jstr("END")
//
| T_IF() => jstr("IF")
| T_SIF() => jstr("SIF")
| T_THEN() => jstr("THEN")
| T_ELSE() => jstr("ELSE")
//
| T_WHEN() => jstr("WHEN")
| T_WITH() => jstr("WITH")
//
| T_CASE(k0) =>
  to_jsonval(jsonify("CASE", jsonize(k0)))
//
| T_SCASE() => jstr("SCASE")
//
| T_ENDIF() => jstr("ENDIF")
| T_ENDSIF() => jstr("ENDSIF")
| T_ENDCASE() => jstr("ENDCASE")
| T_ENDSCASE() => jstr("ENDSCASE")
//
| T_LAM(knd) =>
  to_jsonval(jsonify("LAM", jsonize(knd)))
| T_FIX(knd) =>
  to_jsonval(jsonify("FIX", jsonize(knd)))
//
| T_LET() => jstr("LET")
| T_WHERE() => jstr("WHERE")
| T_LOCAL() => jstr("LOCAL")
//
| T_ENDLAM() => jstr("ENDLAM")
| T_ENDLET() => jstr("ENDLET")
| T_ENDWHERE() => jstr("ENDWHERE")
| T_ENDLOCAL() => jstr("ENDLOCAL")
//
| T_VAL(vlk) =>
  to_jsonval(jsonify("VAL", jsonize(vlk)))
| T_VAR() => jstr("VAR")
//
| T_FUN(fnk) =>
  to_jsonval(jsonify("FUN", jsonize(fnk)))
//
| T_IMPLMNT(knd) =>
  to_jsonval(jsonify("IMPLMNT", jsonize(knd)))
//
| T_ABSSORT() =>
  jstr("ABSSORT")
//
| T_SORTDEF() =>
  jstr("SORTDEF")
//
| T_SEXPDEF(srt) =>
  to_jsonval(jsonify("SEXPDEF", jsonize(srt)))
//
| T_ABSTYPE(srt) =>
  to_jsonval(jsonify("ABSTYPE", jsonize(srt)))
//
| T_ABSIMPL() =>
  jstr("ABSIMPL")
| T_ABSOPEN() =>
  jstr("ABSOPEN")
//
| T_DATASORT() =>
  jstr("DATASORT")
| T_DATATYPE(srt) =>
  to_jsonval(jsonify("DATATYPE", jsonize(srt)))
//
| T_WITHTYPE(srt) =>
  to_jsonval(jsonify("WITHTYPE", jsonize(srt)))
//
| T_SRP_NONFIX() =>
  jstr("#NONFIX")
| T_SRP_FIXITY(knd) =>
  to_jsonval(jsonify("#FIXIXTY", jsonize(knd)))
//
| T_SRP_STACST() => jstr("#STACST")
//
| T_SRP_STATIC() => jstr("#STATIC")
| T_SRP_EXTERN() => jstr("#EXTERN")
//
| T_SRP_DEFINE() => jstr("#DEFINE")
| T_SRP_MACDEF() => jstr("#MACDEF")
//
| T_SRP_INCLUDE() => jstr("#INCLUDE")
//
| T_SRP_STALOAD() => jstr("#STALOAD")
| T_SRP_DYNLOAD() => jstr("#DYNLOAD")
//
| T_SRP_SYMLOAD() => jstr("#SYMLOAD")
//
)
(* : labjsonval *)
(* end of [jsonize_tnode] *)
end

implement
jsonize_token(tok) =
node2("token", jsonize_location(tok.loc()), jsonize_tnode(tok.node()))
