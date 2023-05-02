#include "./../HATS/x.hats"
#staload "{$x}/SATS/lexing0.sats"

#staload "./json.sats"

fun
jsonize_tnode : jsonize_type(tnode)
overload jsonize with jsonize_tnode

fun
jsonize_token : jsonize_type(token)
overload jsonize with jsonize_token

fun{}
jsonize_tokenopt : jsonize_type(tokenopt)
overload jsonize with jsonize_tokenopt

fun{}
jsonize_tokenlst : jsonize_type(tokenlst)
overload jsonize with jsonize_tokenlst
