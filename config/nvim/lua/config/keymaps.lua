local keymap = vim.keymap

keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "Q", "<nop>", { desc = "Disable ex-mode" })
