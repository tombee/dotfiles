return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set('n', '<leader>ff', function ()
      local builtin = require('telescope.builtin')
      builtin.find_files();
    end, {})
    keymap.set('n', '<leader>fg', function ()
      local builtin = require('telescope.builtin')
      builtin.live_grep();
    end, {})
    keymap.set('n', '<C-p>', function ()
      local builtin = require('telescope.builtin')
      builtin.git_files();
    end, {})
    -- keymap.set('n', '<C-p>', "<cmd>lua require('telescope.builtin').help_tags<cr>", {})

  end,
}
