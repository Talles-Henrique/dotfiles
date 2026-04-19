return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      vim.o.background = "dark"
      vim.cmd.colorscheme("gruvbox")

      -- 💚 estilo hacker verde
      vim.api.nvim_set_hl(0, "Normal", { fg = "#00ff00", bg = "#000000" })
      vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#00ff00", bg = "#000000" })
      vim.api.nvim_set_hl(0, "Comment", { fg = "#00aa00", italic = true })
      vim.api.nvim_set_hl(0, "String", { fg = "#00ff66" })
      vim.api.nvim_set_hl(0, "Function", { fg = "#00ffcc" })
      vim.api.nvim_set_hl(0, "Identifier", { fg = "#00ff00" })
      vim.api.nvim_set_hl(0, "StatusLine", { fg = "#00ff00", bg = "#000000" })
    end,
  },
}
