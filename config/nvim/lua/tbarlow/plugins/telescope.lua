return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set('n', '<leader>pf', "<cmd>lua require('telescope.builtin').find_files<cr>", {})
    keymap.set('n', '<C-p>', "<cmd>lua require('telescope.builtin').git_files<cr>", {})
    keymap.set('n', '<leader>ps', function ()
      local builtin = require('telescope.builtin')
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end)
    keymap.set('n', '<C-p>', "<cmd>lua require('telescope.builtin').help_tags<cr>", {})

  end,
}
