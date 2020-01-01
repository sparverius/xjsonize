implement jsonize_val<labjsonval>(x) = x

#define jl jsonize

macdef jval(x) = to_jsonval(jsonize(,(x)))


macdef l2(a,b) =
  jsonize_labjsonvalist($list{labjsonval}
    (jl(,(a)), jl(,(b))))

macdef l3(a,b,c) =
  jsonize_labjsonvalist($list{labjsonval}
    (jl(,(a)), jl(,(b)), jl(,(c))))


macdef l4(a,b,c,d) =
  jsonize_labjsonvalist($list{labjsonval}
    (jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d))))

macdef l5(a,b,c,d,e) =
  jsonize_labjsonvalist($list{labjsonval}
    (jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)), jl(,(e))))

macdef l6(a,b,c,d,e,f) =
  jsonize_labjsonvalist($list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)), jl(,(e)), jl(,(f))))

macdef l7(a,b,c,d,e,f,g) =
  jsonize_labjsonvalist($list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)),jl(,(e)), jl(,(f)), jl(,(g))))

macdef l8(a,b,c,d,e,f,g,h) =
  jsonize_labjsonvalist($list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)),
    jl(,(e)), jl(,(f)), jl(,(g)), jl(,(h))))

macdef l9(a,b,c,d,e,f,g,h,i) =
  jsonize_labjsonvalist($list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)), jl(,(e)),
    jl(,(f)), jl(,(g)), jl(,(h)), jl(,(i))))

macdef l10(a,b,c,d,e,f,g,h,i,j) =
  jsonize_labjsonvalist($list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)), jl(,(e)),
    jl(,(f)), jl(,(g)), jl(,(h)), jl(,(i)), jl(,(j))))


(* ****** ****** *)



macdef ljlst1(nm,a) =
  $list{labjsonval}(jval(,(a)))

macdef ljlst2(nm,a,b) =
  $list{labjsonval}
    (jval(,(a)), jval(,(b)))

macdef ljlst3(nm,a,b,c) =
  $list{labjsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)))

macdef ljlst4(nm,a,b,c,d) =
  $list{labjsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)))

macdef ljlst5(nm,a,b,c,d,e) =
  $list{labjsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)), jval(,(e)))

macdef ljlst6(nm,a,b,c,d,e,f) =
  $list{labjsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)),
      jval(,(d)), jval(,(e)), jval(,(f)))

macdef ljlst7(nm,a,b,c,d,e,f,g) =
  $list{labjsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)),
      jval(,(e)), jval(,(f)), jval(,(g)))

macdef ljlst8(nm,a,b,c,d,e,f,g,h) =
  $list{labjsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)),
      jval(,(e)), jval(,(f)), jval(,(g)), jval(,(h)))

macdef ljlst9(nm,a,b,c,d,e,f,g,h,i) =
  $list{labjsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)), jval(,(e)),
      jval(,(f)), jval(,(g)), jval(,(h)), jval(,(i)))

macdef ljlst10(nm,a,b,c,d,e,f,g,h,i,j) =
  $list{labjsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)), jval(,(e)),
      jval(,(f)), jval(,(g)), jval(,(h)), jval(,(i)), jval(,(j)))


fun arg_lablist(args: List0(string), jvals: List0(jsonval)) : jsonval =
JSONlablist(res) where
  implement
  list_zipwith$fopr<string,jsonval><labjsonval>(x, y) = (x, y) : labjsonval
  val zipped = $effmask_all(
    list_zipwith<string,jsonval><labjsonval>(args, jvals)
  )
  val res = list_of_list_vt{labjsonval}(zipped)
end // end of [list_zip]


(* ****** ****** *)

macdef jlst1(a) =
  $list{jsonval}(jval(,(a)))

macdef jlst2(a,b) =
  $list{jsonval}
    (jval(,(a)), jval(,(b)))

macdef jlst3(a,b,c) =
  $list{jsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)))

macdef jlst4(a,b,c,d) =
  $list{jsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)))

macdef jlst5(a,b,c,d,e) =
  $list{jsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)), jval(,(e)))

macdef jlst6(a,b,c,d,e,f) =
  $list{jsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)),
      jval(,(d)), jval(,(e)), jval(,(f)))

macdef jlst7(a,b,c,d,e,f,g) =
  $list{jsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)),
      jval(,(e)), jval(,(f)), jval(,(g)))

macdef jlst8(a,b,c,d,e,f,g,h) =
  $list{jsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)),
      jval(,(e)), jval(,(f)), jval(,(g)), jval(,(h)))

macdef jlst9(a,b,c,d,e,f,g,h,i) =
  $list{jsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)), jval(,(e)),
      jval(,(f)), jval(,(g)), jval(,(h)), jval(,(i)))

macdef jlst10(a,b,c,d,e,f,g,h,i,j) =
  $list{jsonval}
    (jval(,(a)), jval(,(b)), jval(,(c)), jval(,(d)), jval(,(e)),
      jval(,(f)), jval(,(g)), jval(,(h)), jval(,(i)), jval(,(j)))


(* ****** ****** *)

(*
macdef ll2(tupl, a, b) =
  jsonize_labjsonvalist($list{labjsonval}(
      @(,(tupl.0), jval(,(a))),
      @(,(tupl.1), jval(,(b)))
    )
  )

macdef ll3(tupl, a, b, c) =
  jsonize_labjsonvalist($list{labjsonval}(
      @(,(tupl.0), jval(,(a))),
      @(,(tupl.1), jval(,(b))),
      @(,(tupl.2), jval(,(c)))
    )
  )

macdef ll4(tupl, a, b, c, d) =
  jsonize_labjsonvalist($list{labjsonval}(
      @(,(tupl.0), jval(,(a))),
      @(,(tupl.1), jval(,(b))),
      @(,(tupl.2), jval(,(c))),
      @(,(tupl.3), jval(,(d)))
    )
  )
macdef ll5(tupl, a, b, c, d, e) =
  jsonize_labjsonvalist($list{labjsonval}(
      @(,(tupl.0), jval(,(a))),
      @(,(tupl.1), jval(,(b))),
      @(,(tupl.2), jval(,(c))),
      @(,(tupl.3), jval(,(d))),
      @(,(tupl.4), jval(,(e)))
    )
  )
macdef ll6(tupl, a, b, c, d, e, f) =
  jsonize_labjsonvalist($list{labjsonval}(
      @(,(tupl.0), jval(,(a))),
      @(,(tupl.1), jval(,(b))),
      @(,(tupl.2), jval(,(c))),
      @(,(tupl.3), jval(,(d))),
      @(,(tupl.4), jval(,(e))),
      @(,(tupl.5), jval(,(f)))
    )
  )

macdef ll7(tupl, a, b, c, d, e, f, g) =
  jsonize_labjsonvalist($list{labjsonval}(
      @(,(tupl.0), jval(,(a))),
      @(,(tupl.1), jval(,(b))),
      @(,(tupl.2), jval(,(c))),
      @(,(tupl.3), jval(,(d))),
      @(,(tupl.4), jval(,(e))),
      @(,(tupl.5), jval(,(f))),
      @(,(tupl.6), jval(,(g)))
    )
  )
macdef ll8(tupl, a, b, c, d, e, f, g, h) =
  jsonize_labjsonvalist($list{labjsonval}(
      @(,(tupl.0), jval(,(a))),
      @(,(tupl.1), jval(,(b))),
      @(,(tupl.2), jval(,(c))),
      @(,(tupl.3), jval(,(d))),
      @(,(tupl.4), jval(,(e))),
      @(,(tupl.5), jval(,(f))),
      @(,(tupl.6), jval(,(g))),
      @(,(tupl.7), jval(,(h)))
    )
  )
macdef ll9(tupl, a, b, c, d, e, f, g, h, i) =
  jsonize_labjsonvalist($list{labjsonval}(
      @(,(tupl.0), jval(,(a))),
      @(,(tupl.1), jval(,(b))),
      @(,(tupl.2), jval(,(c))),
      @(,(tupl.3), jval(,(d))),
      @(,(tupl.4), jval(,(e))),
      @(,(tupl.5), jval(,(f))),
      @(,(tupl.6), jval(,(g))),
      @(,(tupl.7), jval(,(h))),
      @(,(tupl.8), jval(,(i)))
    )
  )
macdef ll10(tupl, a, b, c, d, e, f, g, h, i, j) =
  jsonize_labjsonvalist($list{labjsonval}(
      @(,(tupl.0), jval(,(a))),
      @(,(tupl.1), jval(,(b))),
      @(,(tupl.2), jval(,(c))),
      @(,(tupl.3), jval(,(d))),
      @(,(tupl.4), jval(,(e))),
      @(,(tupl.5), jval(,(f))),
      @(,(tupl.6), jval(,(g))),
      @(,(tupl.7), jval(,(h))),
      @(,(tupl.8), jval(,(i))),
      @(,(tupl.9), jval(,(j)))
    )
  )
*)





macdef j1(nm,a) =
  jsonify(,(nm), jl(,(a)))

macdef j2(nm,a,b) =
  jsonize_lablist(,(nm), $list{labjsonval}(
    jl(,(a)), jl(,(b))))

macdef j3(nm,a,b,c) =
  jsonize_lablist(,(nm), $list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c))))

macdef j4(nm,a,b,c,d) =
  jsonize_lablist(,(nm), $list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d))))

macdef j5(nm,a,b,c,d,e) =
  jsonize_lablist(,(nm), $list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)), jl(,(e))))

macdef j6(nm,a,b,c,d,e,f) =
  jsonize_lablist(,(nm), $list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)), jl(,(e)), jl(,(f))))

macdef j7(nm,a,b,c,d,e,f,g) =
  jsonize_lablist(,(nm), $list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)),jl(,(e)), jl(,(f)), jl(,(g))))

macdef j8(nm,a,b,c,d,e,f,g,h) =
  jsonize_lablist(,(nm), $list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)),
    jl(,(e)), jl(,(f)), jl(,(g)), jl(,(h))))

macdef j9(nm,a,b,c,d,e,f,g,h,i) =
  jsonize_lablist(,(nm), $list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)), jl(,(e)),
    jl(,(f)), jl(,(g)), jl(,(h)), jl(,(i))))

macdef j10(nm,a,b,c,d,e,f,g,h,i,j) =
  jsonize_lablist(,(nm), $list{labjsonval}(
    jl(,(a)), jl(,(b)), jl(,(c)), jl(,(d)), jl(,(e)),
    jl(,(f)), jl(,(g)), jl(,(h)), jl(,(i)), jl(,(j))))

overload jj with j2
overload jj with j3
overload jj with j4
