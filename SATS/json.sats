#include "./../HATS/x.hats"
#staload "{$XARGS}/SATS/argsof.sats"

datatype
jsonval =
//
  | JSONnul of ()
  | JSONint of int
  | JSONbool of bool
  | JSONfloat of double
  | JSONstring of string
//
  | JSONlist of jsonvalist
  | JSONlablist of labjsonvalist
  | JSONoption of jsonvalopt
//
  (* | JSONintinf of (intinf) *)
//
where
  jsonvalist = List (jsonval)
  and
  labjsonval = @(string, jsonval)
  and
  labjsonvalist = List0 (labjsonval)
  and
  jsonvalopt = Option (jsonval)

assume ret_list_type_t = labjsonval

(* typedef jsonize_type(a:t@ype) = a -> jsonval *)
typedef jsonize_type(a:t@ype) = a -> labjsonval
typedef labify_type(a:t@ype) = a -> (string, jsonval)

(* ****** ****** *)
//
fun
jsonval_int (x: int): jsonval
(*
fun
jsonval_intinf (x: intinf): jsonval
*)
//
fun
jsonval_bool (x: bool): jsonval
fun
jsonval_double (x: double): jsonval
fun
jsonval_string (x: string): jsonval
//
(* ****** ****** *)
//
fun
jsonval_nil (): jsonval
fun
jsonval_sing (x: jsonval): jsonval
fun
jsonval_pair (x1: jsonval, x2: jsonval): jsonval
//
(* ****** ****** *)
//
fun
jsonval_labval1
  (l1: string, x1: jsonval): jsonval
//
fun
jsonval_labval2
(
  l1: string, x1: jsonval
, l2: string, x2: jsonval
) : jsonval // end of [jsonval_labval2]
//
fun
jsonval_labval3
(
  l1: string, x1: jsonval
, l2: string, x2: jsonval
, l3: string, x3: jsonval
) : jsonval // end of [jsonval_labval3]
//
fun
jsonval_labval4
(
  l1: string, x1: jsonval
, l2: string, x2: jsonval
, l3: string, x3: jsonval
, l4: string, x4: jsonval
) : jsonval // end of [jsonval_labval4]
//
fun
jsonval_labval5
(
  l1: string, x1: jsonval
, l2: string, x2: jsonval
, l3: string, x3: jsonval
, l4: string, x4: jsonval
, l5: string, x5: jsonval
) : jsonval // end of [jsonval_labval5]
//
fun
jsonval_labval6
(
  l1: string, x1: jsonval
, l2: string, x2: jsonval
, l3: string, x3: jsonval
, l4: string, x4: jsonval
, l5: string, x5: jsonval
, l6: string, x6: jsonval
) : jsonval // end of [jsonval_labval6]
//
fun
jsonval_labval7
(
  l1: string, x1: jsonval
, l2: string, x2: jsonval
, l3: string, x3: jsonval
, l4: string, x4: jsonval
, l5: string, x5: jsonval
, l6: string, x6: jsonval
, l7: string, x7: jsonval
) : jsonval // end of [jsonval_labval7]
//
fun
jsonval_labval8
(
  l1: string, x1: jsonval
, l2: string, x2: jsonval
, l3: string, x3: jsonval
, l4: string, x4: jsonval
, l5: string, x5: jsonval
, l6: string, x6: jsonval
, l7: string, x7: jsonval
, l8: string, x8: jsonval
) : jsonval // end of [jsonval_labval8]
//
fun
jsonval_labval9
(
  l1: string, x1: jsonval
, l2: string, x2: jsonval
, l3: string, x3: jsonval
, l4: string, x4: jsonval
, l5: string, x5: jsonval
, l6: string, x6: jsonval
, l7: string, x7: jsonval
, l8: string, x8: jsonval
, l9: string, x9: jsonval
) : jsonval // end of [jsonval_labval8]
//
fun
jsonval_labval10
(
  l1: string, x1: jsonval
, l2: string, x2: jsonval
, l3: string, x3: jsonval
, l4: string, x4: jsonval
, l5: string, x5: jsonval
, l6: string, x6: jsonval
, l7: string, x7: jsonval
, l8: string, x8: jsonval
, l9: string, x9: jsonval
, l10: string, x10: jsonval
) : jsonval // end of [jsonval_labval8]
//

overload labval with jsonval_labval1
overload labval with jsonval_labval2
overload labval with jsonval_labval3
overload labval with jsonval_labval4
overload labval with jsonval_labval5
overload labval with jsonval_labval6
overload labval with jsonval_labval7
overload labval with jsonval_labval8
overload labval with jsonval_labval9
overload labval with jsonval_labval10

(* ****** ****** *)
//
fun
jsonval_conarglst
  (con: string, arglst: jsonvalist): jsonval
//
(* ****** ****** *)
//
fun
jsonval_conarg0 (con: string): jsonval
fun
jsonval_conarg1 (con: string, arg: jsonval): jsonval
fun
jsonval_conarg2
  (con: string, arg1: jsonval, arg2: jsonval): jsonval
//
fun
jsonval_conarg3
(
  con: string, arg1: jsonval, arg2: jsonval, arg3: jsonval
) : jsonval // end of [jsonval_conarg3]
fun
jsonval_conarg4
(
  con: string
, arg1: jsonval, arg2: jsonval, arg3: jsonval, arg4: jsonval
) : jsonval // end of [jsonval_conarg4]
//
(* ****** ****** *)
//
fun
jsonval_none (): jsonval
fun
jsonval_some (x: jsonval): jsonval
//
(* ****** ****** *)
//
fun
fprint_jsonval
  (out: FILEref, x: jsonval): void
fun
fprint_jsonvalist
  (out: FILEref, xs: jsonvalist): void
fun
fprint_labjsonvalist
  (out: FILEref, lxs: labjsonvalist): void
//
overload fprint with fprint_jsonval
overload fprint with fprint_jsonvalist
overload fprint with fprint_labjsonvalist


fun
print_jsonval(x: jsonval): void
fun
prerr_jsonval(x: jsonval): void

overload print with print_jsonval
overload prerr with prerr_jsonval

//
(*
fun
print_jsonval(x: jsonval): void
fun
print_jsonvalist(xs: jsonvalist): void
fun
print_labjsonvalist(lxs: labjsonvalist): void
*)
//
(* ****** ****** *)

typedef
jsonize_ftype (a:t@ype) = (a) -> jsonval
typedef
labify_ftype (a:t@ype) = (a) -> @()

(* ****** ****** *)

fun
jsonize_ignored{a:type} (x: a): jsonval

(* ****** ****** *)
//
fun{a:t@ype}
jsonize_list_fun
  (* (xs: List0 (a), f: jsonize_ftype (a)): jsonval *)
  (xs: List (a), f: jsonize_ftype (a)): jsonval
fun{a:t@ype}
jsonize_option_fun
  (xs: Option (a), f: jsonize_ftype (a)): jsonval

(* ****** ****** *)

symintr jsonize
symintr labify
symintr labelize

fun{a:t@ype} jsonize_val: (a) -> labjsonval

fun{a:t@ype} jsonize_list: (List(a)) -> labjsonval

fun{a:t@ype} jsonize_option: (Option(a)) -> labjsonval
fun{a:t@ype} jsonize_option_vt: (Option_vt(a)) -> labjsonval

fun
jsonize_int(x:int): labjsonval

fun
jsonize_char(x:char): labjsonval

fun
jsonize_string(x:string): labjsonval

fun
jsonize_bool(x:bool): labjsonval

fun
jsonize_double(x:double): labjsonval

fun
jsonize_uint(x:uint): labjsonval

(* fun
jsonize_float(x:float): jsonval = JSONstring(tostring_val<float>(x)) *)

overload jsonize with jsonize_int

overload jsonize with jsonize_char

overload jsonize with jsonize_string

overload jsonize with jsonize_bool

overload jsonize with jsonize_double

overload jsonize with jsonize_uint

(* overload jsonize with jsonize_float *)

fun
lab(x:string, rst:jsonval): jsonval

fun
jnul(): jsonval

fun
jint(x:int): jsonval

fun
jbool(x:bool): jsonval

fun
jfloat(x:double): jsonval

fun
jstr(x:string): jsonval

fun
listj(x: jsonval): jsonval

fun
listj2(x: jsonval, y: jsonval): jsonval


fun
labval2(x: jsonval, y: jsonval): jsonval

fun
node(x: string, y: labjsonval): labjsonval
fun
node2(x: string, y: labjsonval, z: labjsonval): labjsonval


fun
fprintf {ts:types} (
  out: FILEref,
  fmt: string,
  args: ts
): void = "mac#fprintf"

(*
typedef jv = //jsonval
labjsonval
*)

typedef ljv = labjsonval

fun
jsonify0 (guard_name: string): ljv
fun
jsonify1 (guard_name: string, arg_json: ljv): ljv
fun
jsonify2 (string, ljv, ljv): ljv
fun
jsonify3 (string, ljv, ljv, ljv): ljv
fun
jsonify4 (string, ljv, ljv, ljv, ljv): ljv
fun
jsonify5 (string, ljv, ljv, ljv, ljv, ljv): ljv
fun
jsonify6 (string, ljv, ljv, ljv, ljv, ljv, ljv): ljv
fun
jsonify7 (string, ljv, ljv, ljv, ljv, ljv, ljv, ljv): ljv
fun
jsonify8 (string, ljv, ljv, ljv, ljv, ljv, ljv, ljv, ljv): ljv
fun
jsonify9 (string, ljv, ljv, ljv, ljv, ljv, ljv, ljv, ljv, ljv): ljv
fun
jsonify10 (string, ljv, ljv, ljv, ljv, ljv, ljv, ljv, ljv, ljv, ljv): ljv

overload jsonify with jsonify0
overload jsonify with jsonify1
overload jsonify with jsonify2
overload jsonify with jsonify3
overload jsonify with jsonify4
overload jsonify with jsonify5
overload jsonify with jsonify6
overload jsonify with jsonify7
overload jsonify with jsonify8
overload jsonify with jsonify9
overload jsonify with jsonify10

fun labjson_string(string, string): jsonval
overload labjson with labjson_string

fun to_jsonval_labjsonval(labjsonval): jsonval
fun to_jsonval_jsonval(jsonval): jsonval

overload to_jsonval with to_jsonval_labjsonval
overload to_jsonval with to_jsonval_jsonval

fun tagged_int(xs: string, ys: int) : labjsonval
fun tagged_string(xs: string, ys: string) : labjsonval

overload tagged with tagged_int
overload tagged with tagged_string

fun mknode_jsonval(x: string, y: jsonval): jsonval
fun mknode_string(x: string, y: string): jsonval
fun mknode_labjsonval(x: string, y: labjsonval): jsonval
overload mknode with mknode_jsonval
overload mknode with mknode_string
overload mknode with mknode_labjsonval

fun
jsonize_listize(xs: List0(labjsonval)): jsonval

fun
jsonize_labjsonvalist(xs: List0(labjsonval)): jsonval
overload labelize with jsonize_labjsonvalist

fun
jsonize_lablist(nm: string, xs: List0(labjsonval)): labjsonval
(*
overload jsonize with jsonize_lablist
*)

fun
jsonize_named_labjsonvalist(nm: string, x: labjsonvalist): labjsonval
(*
overload jsonize with jsonize_named_labjsonvalist
*)
