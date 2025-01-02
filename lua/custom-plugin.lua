local M = {}

function M.show_line_error()
  -- 1) Pegar buffer e linha atuais
  local bufnr = vim.api.nvim_get_current_buf()
  local cursor_pos = vim.api.nvim_win_get_cursor(0)
  local line_nr = cursor_pos[1] - 1

  -- 2) Diagnósticos na linha atual
  local diagnostics_on_line = vim.diagnostic.get(bufnr, { lnum = line_nr })
  if #diagnostics_on_line == 0 then
    print("Sem erros nessa linha!")
    return
  end

  local diag = diagnostics_on_line[1]
  local msg = diag.message or "Erro desconhecido"

  -- 3) Criar um buffer flutuante
  local float_buf = vim.api.nvim_create_buf(false, true)

  -- 4) Separar a mensagem em linhas
  local lines = {}
  for line in msg:gmatch("[^\r\n]+") do
    table.insert(lines, line)
  end

  -- 5) Calcular altura e largura necessárias
  local needed_height = #lines
  local max_line_length = 0
  for _, line in ipairs(lines) do
    if #line > max_line_length then
      max_line_length = #line
    end
  end

  -- Em vez de usar vim.o.lines e vim.o.columns, pegamos o tamanho da janela atual:
  local winid = vim.api.nvim_get_current_win()
  local wwidth = vim.api.nvim_win_get_width(winid)
  local wheight = vim.api.nvim_win_get_height(winid)

  -- Limites de 75% do split atual, por exemplo
  local max_height = math.floor(wheight * 0.75)
  local max_width  = math.floor(wwidth * 0.75)

  local height = math.min(needed_height, max_height)
  local width  = math.min(max_line_length + 2, max_width)

  -- Centralizar dentro do split
  local row = math.floor((wheight - height) / 2)
  local col = math.floor((wwidth - width) / 2)

  local opts = {
    relative = "win",
    win = winid,          -- importante: a janela usada como referência
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  }

  -- 6) Inserir as linhas no buffer
  vim.api.nvim_buf_set_lines(float_buf, 0, -1, false, lines)

  -- 7) Abrir a janela flutuante (dentro do split atual)
  local float_winid = vim.api.nvim_open_win(float_buf, true, opts)

  -- 8) Desativar wrap (opcional)
  vim.api.nvim_win_set_option(float_winid, "wrap", false)

  -- 9) Mapeamento local para fechar com 'q' (opcional)
  vim.api.nvim_buf_set_keymap(
    float_buf,
    "n",
    "q",
    "<cmd>close<CR>",
    { noremap = true, silent = true }
  )
end

return M

