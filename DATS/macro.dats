#include "./util.dats"

macdef make_untagged_lablist(x0) = @(name, res): labjsonval
where
val name = nameof(,(x0))
val tag = nameof_tag(,(x0))
val args = argsof_tag(,(x0))
val tks = JSONlablist(args)
val res = mknode(tag, tks)
end

macdef make_untagged(x0) = res
where
val name = nameof(,(x0))
val tag = nameof_tag(,(x0))
val args = argsof_tag(,(x0))
val tks = jsonize_listize(args)
val res = jsval3(name, JSONstring(tag), tks)
end

macdef make_tagged(x0) = res
where
val name = nameof(,(x0))
val node = ,(x0).node()
val tag = nameof_tag(node)
val args = argsof_tag(node)
val tks = jsonize_listize(args)
val res = jsval3(name, JSONstring(tag), tks)
end

macdef make_untagged_list(x0, lst) = res
where
val name = nameof(,(x0))
val tag = nameof_tag(,(x0))
val args = ,(lst)
val tks = jsonize_listize(args)
val res = jsval3(name, JSONstring(tag), tks)
end

macdef make_notag(x0) = res
where
val name = nameof(,(x0))
val args = argsof(,(x0))
val tks = jsonize_listize(args)
val res = jsval3(name, jnul(), tks)
end

macdef make_notag2(x0) = res
where
val name = nameof(,(x0))
val tks = jsonize_listize(argsof(,(x0)))
val res = jsval3(name, jnul(), tks)
end
