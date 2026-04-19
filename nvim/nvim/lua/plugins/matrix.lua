return {
  {
    "eandrju/cellular-automaton.nvim",
    config = function()
      -- comando manual pra iniciar Matrix
      vim.keymap.set("n", "<leader>mm", "<cmd>CellularAutomaton make_it_rain<CR>")
    end,
  },
}
