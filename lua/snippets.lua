-- ~/.config/nvim/lua/snippets.lua

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Snippets para TSX, JSX ou qualquer outro filetype. 
-- Se quiser limitado a TSX/JSX, use "typescriptreact" ou "javascriptreact" em vez de "all".
ls.add_snippets("all", {
  -- 1) Qualquer palavra seguida de "/", ex: "MeuComponente/"
  s(
    { trig = "([%w_]+)/", regTrig = true },  -- regex para capturar a palavra antes de "/"
    {
      f(function(args)
        -- args.snippet.captures[1] é o texto capturado antes do "/"
        return "<" .. args.snippet.captures[1] .. " />"
      end)
    }
  ),

  -- 2) Qualquer palavra seguida de "*", ex: "MeuComponente*"
  s(
    { trig = "([%w_]+)%*", regTrig = true }, -- regex para capturar a palavra antes de "*"
    {
      t("<"),
      f(function(args)
        return args.snippet.captures[1]
      end),
      t(">"),
      i(1, "cursor"),
      t("</"),
      f(function(args)
        return args.snippet.captures[1]
      end),
      t(">")
    }
  ),
})

