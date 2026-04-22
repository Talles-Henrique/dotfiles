------------------------------------------------------------------
-- 💚 HACKER MODE COMPLETO (LAZYVIM)
------------------------------------------------------------------

-- 🌿 THEME BASE
vim.o.background = "dark"
vim.cmd.colorscheme("gruvbox")

------------------------------------------------------------------
-- 💚 CORE COLORS (GREEN HACKER MODE)
------------------------------------------------------------------
local c = "#00ff00"

-- highlights principais
local groups = {
  "Normal",
  "Comment",
  "Constant",
  "String",
  "Identifier",
  "Function",
  "Statement",
  "Keyword",
  "Type",
  "PreProc",
  "Special",
  "Underlined",
  "Todo",
}

for _, group in ipairs(groups) do
  vim.api.nvim_set_hl(0, group, { fg = c })
end

-- extras importantes
vim.api.nvim_set_hl(0, "NormalFloat", { fg = c, bg = "NONE" })
vim.api.nvim_set_hl(0, "StatusLine", { fg = c, bg = "NONE" })

------------------------------------------------------------------
-- 🧠 TRANSPARÊNCIA FORÇADA (ANTI OVERRIDE LAZYVIM)
------------------------------------------------------------------
local function transparent()
  vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
  vim.cmd("highlight NormalFloat guibg=NONE ctermbg=NONE")
  vim.cmd("highlight SignColumn guibg=NONE")
  vim.cmd("highlight LineNr guibg=NONE")
  vim.cmd("highlight Folded guibg=NONE")
  vim.cmd("highlight EndOfBuffer guibg=NONE")
end

transparent()

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = transparent,
})

------------------------------------------------------------------
-- 🧿 CURSOR CRT STYLE
------------------------------------------------------------------
vim.opt.guicursor = {
  "n-v-c:block-blinkon500-blinkoff500",
  "i:ver25-blinkon500-blinkoff500",
  "r:block-blinkon500",
}

------------------------------------------------------------------
-- 🌧️ MATRIX MODE (KEYBIND)
------------------------------------------------------------------
vim.keymap.set("n", "<leader>mm", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Matrix rain effect" })

------------------------------------------------------------------
-- 💀 BOOT DASHBOARD (MR ROBOT STYLE)
------------------------------------------------------------------
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.defer_fn(function()
      print([[
 SYSTEM BOOTING...
 ACCESS GRANTED ✔
 INITIALIZING CORE...
 ----------------------
 WELCOME, OPERATOR
      ]])
    end, 100)
  end,
})
