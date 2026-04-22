-- ~/.config/nvim/lua/config/autocmds.lua
-- MODO MATRIX TOTAL: TUDO VERDE EM TODAS AS LINGUAGENS

local function force_green_matrix()
  local green = "#00ff00"

  -- 1. Limpa todos os grupos de destaque comuns e do Treesitter
  -- Isso cobre: números, operadores, delimitadores, %d, \n, etc.
  local syntax_groups = {
    "Normal",
    "Comment",
    "Constant",
    "String",
    "Character",
    "Number",
    "Boolean",
    "Float",
    "Identifier",
    "Function",
    "Statement",
    "Conditional",
    "Repeat",
    "Label",
    "Operator",
    "Keyword",
    "Exception",
    "PreProc",
    "Include",
    "Define",
    "Macro",
    "PreCondit",
    "Type",
    "StorageClass",
    "Structure",
    "Typedef",
    "Special",
    "SpecialChar",
    "Tag",
    "Delimiter",
    "SpecialComment",
    "Debug",
    "Underlined",
    "Ignore",
    "Error",
    "Todo",
    "Directory",
    "Question",
    "QuickFixLine",
    "SpecialKey",
    "NonText",
    "EndOfBuffer",
  }

  -- Aplica em grupos padrão
  for _, group in ipairs(syntax_groups) do
    vim.api.nvim_set_hl(0, group, { fg = green, bg = "NONE", force = true })
  end

  -- 2. Força o Treesitter (Captura TUDO de todas as linguagens)
  -- O comando abaixo pega todos os grupos que começam com @ e bota verde
  local ts_highlights = vim.api.nvim_get_hl(0, {})
  for hl_name, _ in pairs(ts_highlights) do
    if hl_name:match("^@") then
      vim.api.nvim_set_hl(0, hl_name, { fg = green, bg = "NONE", force = true })
    end
  end

  -- 3. Transparência para o seu i3wm
  vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
  vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
end

-- Executa ao carregar o tema
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = force_green_matrix,
})

-- Executa ao entrar no Neovim
vim.api.nvim_create_autocmd("VimEnter", {
  callback = force_green_matrix,
})

-- 4. MATAR O "SEMANTIC HIGHLIGHT" (O culpado pelo %d colorido)
-- Isso impede que o LSP (clangd, pyright, etc.) mande informações de cores.
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client then
      client.server_capabilities.semanticTokensProvider = nil
    end
  end,
})
