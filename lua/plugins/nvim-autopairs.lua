return {
  "windwp/nvim-autopairs",
  config = function()
    local npairs = require("nvim-autopairs")
    local Rule = require("nvim-autopairs.rule")

    npairs.setup({
      map_c_w = true, -- permite usar <C-w> para apagar uma tag inteira
    })

    npairs.add_rules({
      -- Regra para transformar `Teste/` em `<Teste />`
      Rule("(%w+)/", " />", "javascriptreact"):use_regex(true):replace_endpair(function(opts)
        local name = opts.line:sub(opts.col - #opts.trigger - 1, opts.col - 1)
        return "<" .. name .. " />"
      end),

      -- Regra para transformar `Teste*` em `<Teste></Teste>`
      Rule("(%w+)%*", "></", "javascriptreact"):use_regex(true):replace_endpair(function(opts)
        local name = opts.line:sub(opts.col - #opts.trigger, opts.col - 1)
        return "<" .. name .. "></" .. name .. ">"
      end),
    })
  end,
}

