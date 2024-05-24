return {
  {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.ai").setup()
      local notify = require "mini.notify"
      notify.setup()
      vim.notify = notify.make_notify()
      require("mini.surround").setup()
    end,
  },
}
