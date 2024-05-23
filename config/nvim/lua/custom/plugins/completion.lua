return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "onsails/lspkind.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    {
      "L3MON4D3/LuaSnip",
      build = "make install_jsregexp",
      dependencies = {
        "rafamadriz/friendly-snippets",
        lazy = false,
      },
    },
    "saadparwaiz1/cmp_luasnip",
  },
  config = function()
    require "custom.completion"
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
