return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  cond = not is_windows,
		-- stylua: ignore
		keys = {
			{ '<C-h>', '<cmd>TmuxNavigateLeft<CR>', mode = { 'n', 't' }, silent = true, desc = 'Jump to left pane' },
			{ '<C-j>', '<cmd>TmuxNavigateDown<CR>', mode = { 'n', 't' }, silent = true, desc = 'Jump to lower pane' },
			{ '<C-k>', '<cmd>TmuxNavigateUp<CR>', mode = { 'n', 't' }, silent = true, desc = 'Jump to upper pane' },
			{ '<C-l>', '<cmd>TmuxNavigateRight<CR>', mode = { 'n', 't' }, silent = true, desc = 'Jump to right pane' },
			{ '<C-\\>', '<cmd>TmuxNavigateRight<CR>', mode = { 'n', 't' }, silent = true, desc = 'Jump to previous pane' },
		},
  init = function()
    vim.g.tmux_navigator_no_mappings = true
  end,
}
