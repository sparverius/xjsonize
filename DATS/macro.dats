macdef make_untagged(x0) = @(name, res): labjsonval
where

val name = nameof(,(x0))
val tag = nameof_tag(,(x0))
val () = println!(name)
val tks = jsonize_labjsonvalist(argsof_tag(,(x0)))
(* val tks = jsonize_listize(argsof_tag(,(x0))) *)
val res = mknode(tag, tks)
end

macdef make_tagged(x0) = @(name, res): labjsonval
where
val name = nameof(,(x0))
val node = ,(x0).node()
val tag = nameof_tag(node)
(* val tks = JSONlablist(argsof_tag(node)) *)
val () = println!(name)
val tks = jsonize_labjsonvalist(argsof_tag(node))
(* val tks = jsonize_listize(argsof_tag(node)) *)
val res = mknode(tag, tks)
end

macdef make_untagged_list(x0, lst) = @(name, res): labjsonval
where
val name = nameof(,(x0))
val tag = nameof_tag(,(x0))
val () = println!(name)
val tks = jsonize_labjsonvalist(,(lst))
(* val tks = jsonize_listize(,(lst)) *)
val res = mknode(tag, tks)
end

macdef make_notag(x0) = @(name, res): labjsonval
where
val name = nameof(,(x0))
val () = println!(name)
val res = jsonize_labjsonvalist(argsof(,(x0)))
(* val res = jsonize_listize(argsof(,(x0))) *)
end
