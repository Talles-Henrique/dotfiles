return {
  {
    "goolord/alpha-nvim",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        " ",
        " SYSTEM BOOTING...",
        " ACCESS GRANTED ✔",
        " LOADING NEOVIM CORE...",
        " ----------------------",
        " WELCOME, OPERATOR",
        " ",
      }

      dashboard.section.buttons.val = {}

      alpha.setup(dashboard.opts)
    end,
  },
}
