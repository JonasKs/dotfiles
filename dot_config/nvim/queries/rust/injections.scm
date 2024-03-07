;Inject into sqlx::query!(r#"....#, ...) as sql
; pretty much stolen entirely from teej: 
; https://www.youtube.com/watch?v=v3o9YaHBM4Q
; but modified to also support query_as
(macro_invocation
  (scoped_identifier
    path: (identifier) @_path (#eq? @_path "sqlx")
    name: (identifier) @_name (#any-of? @_name "query" "query_as"))
  (token_tree
    (raw_string_literal) @sql)
  (#offset! @sql 1 0 0 0))
