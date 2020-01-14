macdef jsval3(knd, tag, arg) =
let
  val the_knd = JSONstring(,(knd)) : jsonval
  val the_tag = ,(tag) : jsonval
  val the_arg = ,(arg) : jsonval

  val res0 = (
  case+ (the_tag, the_arg) of
    | (JSONnul(), JSONlist(xs)) =>
      (* 22 *)
      (case+ xs of | list_nil() => 1 | _ => 22) : int
    | (JSONstring(str), JSONlist(xs)) =>
      (
        if str = "" then
          (* 22 *)
          (case+ xs of | list_nil() => 1 | _ => 22) : int
        else (case+ xs of | list_nil() => 21 | _ => 3) : int
      ) : int
    | (_, _) => 3
  ) : int
  val res =
  (
    case+ res0 of
    | 1 => jsonval_labval1("knd", the_knd)
    | 21 => jsonval_labval2("knd", the_knd, "tag", the_tag)
    | 22 => jsonval_labval2("knd", the_knd, "arg", the_arg)
    | _ => jsonval_labval3("knd", the_knd, "tag", the_tag, "arg", the_arg)
  ) : jsonval
in
  @("node", res) : labjsonval
end


macdef kndat(x, y) =
@(
"node",
jsonval_labval2(
  "knd", JSONstring(,(x)),
  "dat", ,(y)
)
) : labjsonval
