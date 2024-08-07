local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
  s("hel", {
    t('print("hello world")'),
  }),
  -- You can add more Python snippets here
}
