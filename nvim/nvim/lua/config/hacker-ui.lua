vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight NormalFloat guibg=NONE ctermbg=NONE")
vim.cmd("highlight SignColumn guibg=NONE")
vim.cmd("highlight LineNr guibg=NONE")
vim.cmd("highlight Folded guibg=NONE")

vim.api.nvim_set_hl(0, "Terminal", { fg = "#00ff00", bg = "#000000" })
