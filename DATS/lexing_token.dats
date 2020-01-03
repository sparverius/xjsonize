#include "./../HATS/prelude.hats"

#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"

#staload "./../SATS/json.sats"
#staload _ = "./json.dats"

#staload "./../SATS/lexing.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/basics.sats"

#staload SYM_J = "./../SATS/symbol.sats"

overload jsonize with $SYM_J.jsonize_symbol

#include "./global.dats"

local

implement jsonize_val<token> = jsonize_token

in

implement jsonize_tokenopt<> = jsonize_option<token>
implement jsonize_tokenlst<> = jsonize_list<token>

(*
implement{} jsonize_tokenopt(x) = jsonize_option<token>("tokenopt", x)
implement{} jsonize_tokenlst(x) = jsonize_list<token>("tokenlst", x)
*)

end

implement
jsonize_tnode(tnd) =
@(name, res): labjsonval
where
(* val res = jsonval_labval1(nameof_tag(tnd), JSONlablist()) *)
val name = nameof(tnd)
val tag = nameof_tag(tnd)
val tks = argsof_tag(tnd)
val data =
(
  case+ tks of
  | list_nil() => jnul()
  | list_cons(x, xs) =>
    if iseqz xs then x.1 else JSONlablist(tks)
) : jsonval
val res = mknode(tag, data)
end
(*
@("tnode", res): labjsonval
where
val res =
(
case+ tnd of
//
| T_EOF() => jstr("T_EOF")
| T_ERR() => jstr("T_ERR")
//
| T_EOL() => jstr("T_EOL")
//
| T_BLANK(x) =>
  labjson("T_BLANK", x)
//
| T_CLNLT(x) =>
  labjson("T_CLNLT", x)
| T_DOTLT(x) =>
  labjson("T_DOTLT", x)
//
| T_IDENT_alp(x) =>
  (* labjson("T_IDENT_alp", x) *)
  (* jsonval_labval2("tag", JSONstring("T_IDENT_alp"), "data", JSONstring(x)) *)
  mknode("T_IDENT_alp", x)
| T_IDENT_sym(x) =>
  (* labjson("T_IDENT_sym", x) *)
  mknode("T_IDENT_sym", x)
//
| T_IDENT_srp(x) =>
  labjson("T_IDENT_srp", x)
| T_IDENT_dlr(x) =>
  labjson("T_IDENT_dlr", x)
//
| T_IDENT_qual(x) =>
  labjson("T_IDENT_qual", x)
//
| T_INT1(rep) =>
  (* labjson("T_INT1", rep) *)
  mknode("T_INT1", rep)
| T_INT2(base, rep) =>
  to_jsonval (jsonify("T_INT2", jsonize(base), jsonize(rep)))
| T_INT3(base, rep, k0(*sfx*)) =>
  to_jsonval(jsonify("T_INT3", jsonize(base), jsonize(rep), jsonize(k0)))
//
| T_FLOAT1(rep) =>
  to_jsonval(jsonify("T_FLOAT1", jsonize(rep)))
| T_FLOAT2(base, rep) =>
  to_jsonval(jsonify("T_FLOAT2", jsonize(base), jsonize(rep)))

| T_FLOAT3(base, rep, k0(*sfx*)) =>
  to_jsonval(jsonify("T_FLOAT3",
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
  to_jsonval(jsonify("T_CHAR_nil", jsonize(rep)))
| T_CHAR_char(rep) =>
  to_jsonval(jsonify("T_CHAR_char", jsonize(rep)))
| T_CHAR_slash(rep) =>
  to_jsonval(jsonify("T_CHAR_slash", jsonize(rep)))
//
| T_STRING_closed(str) =>
  to_jsonval(jsonify("T_STRING_closed", jsonize(str)))
| T_STRING_unclsd(str) =>
  to_jsonval(jsonify("T_STRING_unclsd", jsonize(str)))
//
(*
| T_CDATA(cdata, asz) => jsonify(("CDATA(...)")
*)
//
| T_SPECHAR(c) =>
  to_jsonval(jsonify("T_SPECHAR", jsonize(int2char0(c))))
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
| T_AT() => // jstr("T_AT")
  mknode("T_AT", "@")
//
| T_BAR() => // jstr("T_BAR")
  mknode("T_BAR", "|")
| T_CLN() => // jstr("T_CLN")
  mknode("T_CLN", ":")
| T_DOT() => // jstr("T_DOT")
  mknode("T_DOT", ".")
//
| T_EQ() => // jstr("T_EQ")
  mknode("T_EQ", "=")
//
| T_LT() => // jstr("T_LT")
  mknode("T_LT", "<")
| T_GT() => // jstr("T_GT")
  mknode("T_GT", ">")
//
| T_DLR() => // jstr("T_DLR")
  mknode("T_DLR", "$")
| T_SRP() => // jstr("T_SRP")
  mknode("T_SRP", "#")
//
| T_EQLT() => // jstr("T_EQLT")
  mknode("T_EQLT", "=<")
| T_EQGT() => // jstr("T_EQGT")
  mknode("T_EQGT", "=>")
//
| T_LTGT() => // jstr("T_LTGT")
  mknode("T_LTGT", "<>")
| T_GTLT() => // jstr("T_GTLT")
  mknode("T_GTLT", "><")
//
| T_MSLT() => // jstr("T_MSLT")
  mknode("T_MSLT", "-<")
(*
| T_MSGT() => jstr("MSGT")
| T_MSLTGT() => jstr("MSLTGT")
*)
//
(*
| T_DOTLT() => jstr("DOTLT")
*)
| T_GTDOT() => // jstr("T_GTDOT")
  mknode("T_GTDOT", ">.")
//
| T_COMMA() => // jstr("T_COMMA")
  mknode("T_COMMA", ",")
| T_SMCLN() => // jstr("T_SMCLN")
  mknode("T_SMCLN", ";")
//
| T_BSLASH() => // jstr("T_BSLASH")
  mknode("T_BSLASH", "\\")
//
| T_LPAREN() => // jstr("T_LPAREN")
  mknode("T_LPAREN", "(")
| T_RPAREN() => //jstr("T_RPAREN")
  mknode("T_RPAREN", ")")
| T_LBRACE() => // jstr("T_LBRACE")
  mknode("T_LBRACE", "{")
| T_RBRACE() => // jstr("T_RBRACE")
  mknode("T_RBRACE", "{")
//
| T_LBRACK() => // jstr("T_LBRACK")
  mknode("T_LBRACK", "[")
| T_RBRACK() => // jstr("T_RBRACK")
  mknode("T_RBRACK", "]")
//
| T_EXISTS(knd) =>
  to_jsonval(jsonify("T_EXISTS", jsonize(knd)))
//
| T_TUPLE(knd) =>
  to_jsonval(jsonify("T_TUPLE", jsonize(knd)))
| T_RECORD(knd) =>
  to_jsonval(jsonify("T_RECORD", jsonize(knd)))
(*
| T_STRUCT() => jsonize("STRUCT")
*)
//
| T_AS() => jstr("T_AS")
//
| T_OF() => jstr("T_OF")
//
| T_OP() => jstr("T_OP")
//
| T_OP_par() => jstr("T_OP_par")
| T_OP_sym(id) =>
  to_jsonval(jsonify("T_OP_sym", jsonize(id)))
//
| T_IN() => jstr("T_IN")
//
| T_AND() => jstr("T_AND")
| T_END() => jstr("T_END")
//
| T_IF() => jstr("T_IF")
| T_SIF() => jstr("T_SIF")
| T_THEN() => jstr("T_THEN")
| T_ELSE() => jstr("T_ELSE")
//
| T_WHEN() => jstr("T_WHEN")
| T_WITH() => jstr("T_WITH")
//
| T_CASE(k0) =>
  to_jsonval(jsonify("T_CASE", jsonize(k0)))
//
| T_SCASE() => jstr("T_SCASE")
//
| T_ENDIF() => jstr("T_ENDIF")
| T_ENDSIF() => jstr("T_ENDSIF")
| T_ENDCASE() => jstr("T_ENDCASE")
| T_ENDSCASE() => jstr("T_ENDSCASE")
//
| T_LAM(knd) =>
  to_jsonval(jsonify("T_LAM", jsonize(knd)))
| T_FIX(knd) =>
  to_jsonval(jsonify("T_FIX", jsonize(knd)))
//
| T_LET() => jstr("T_LET")
| T_WHERE() => jstr("T_WHERE")
| T_LOCAL() => jstr("T_LOCAL")
//
| T_ENDLAM() => jstr("T_ENDLAM")
| T_ENDLET() => jstr("T_ENDLET")
| T_ENDWHERE() => jstr("T_ENDWHERE")
| T_ENDLOCAL() => jstr("T_ENDLOCAL")
//
| T_VAL(vlk) =>
  (* to_jsonval(jsonify("T_VAL", jsonize(vlk))) *)
  mknode("T_VAL", to_jsonval(jsonize(vlk)))

| T_VAR() => jstr("T_VAR")
//
| T_FUN(fnk) =>
  (* to_jsonval(jsonify("T_FUN", jsonize(fnk))) *)
  mknode("T_FUN", to_jsonval(jsonize(fnk)))
//
| T_IMPLMNT(knd) =>
  (* to_jsonval(jsonify("T_IMPLMNT", jsonize(knd))) *)
  mknode("T_IMPLMNT", to_jsonval(jsonize(knd)))
//
| T_ABSSORT() =>
  jstr("T_ABSSORT")
//
| T_SORTDEF() =>
  jstr("T_SORTDEF")
//
| T_SEXPDEF(srt) =>
  to_jsonval(jsonify("T_SEXPDEF", jsonize(srt)))
//
| T_ABSTYPE(srt) =>
  to_jsonval(jsonify("T_ABSTYPE", jsonize(srt)))
//
| T_ABSIMPL() =>
  jstr("T_ABSIMPL")
| T_ABSOPEN() =>
  jstr("T_ABSOPEN")
//
| T_DATASORT() =>
  jstr("T_DATASORT")
| T_DATATYPE(srt) =>
  (* to_jsonval(jsonify("T_DATATYPE", jsonize(srt))) *)
  mknode("T_DATATYPE", res)
  where
  val res = (
  case- srt of
  | 0 => "datatype"
  | 2 => "datavtype"
  | 4 => "dataprop"
  | 6 => "dataview"
  ) : string
  end
//
| T_WITHTYPE(srt) =>
  to_jsonval(jsonify("T_WITHTYPE", jsonize(srt)))
//
| T_SRP_NONFIX() =>
  jstr("T_SRP_NONFIX")
| T_SRP_FIXITY(knd) =>
  to_jsonval(jsonify("T_SRP_FIXIXTY", jsonize(knd)))
//
| T_SRP_STACST() => jstr("T_SRP_STACST")
//
| T_SRP_STATIC() => jstr("T_SRP_STATIC")
| T_SRP_EXTERN() => jstr("T_SRP_EXTERN")
//
| T_SRP_DEFINE() => jstr("T_SRP_DEFINE")
| T_SRP_MACDEF() => jstr("T_SRP_MACDEF")
//
| T_SRP_INCLUDE() => jstr("T_SRP_INCLUDE")
//
| T_SRP_STALOAD() => jstr("T_SRP_STALOAD")
| T_SRP_DYNLOAD() => jstr("T_SRP_DYNLOAD")
//
| T_SRP_SYMLOAD() => jstr("T_SRP_SYMLOAD")
//
)
(* : labjsonval *)
(* end of [jsonize_tnode] *)
end
*)

implement
jsonize_token(tok) =
node2("token", jsonize_location(tok.loc()), jsonize_tnode(tok.node()))
