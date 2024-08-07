local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("cmain", {
    t({ "#include <stdio.h>", "" }),
    t({ "int main() {", "" }),
    t({ "\t" }),
    i(1, "// Your code here"),
    t({ "", "\treturn 0;", "}" }),
  }),

  -- s("for", {
  --   t({ "for (" }),
  --   i(1, "int i = 0"),
  --   t({ "; ", "" }),
  --   i(2, "i < 10"),
  --   t({ "; " }),
  --   i(3, "i++"),
  --   t({ ") {", "\t" }),
  --   i(0, "// Your code here"),
  --   t({ "", "}" }),
  -- }),
}
