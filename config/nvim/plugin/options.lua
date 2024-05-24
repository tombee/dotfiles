local opt = vim.opt

opt.inccommand = "split"

opt.smartcase = true
opt.ignorecase = true

-- Don't have `o` add a comment
opt.formatoptions:remove "o"

opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = "yes"
opt.shada = { "'10", "<0", "s10", "h" }

opt.clipboard = "unnamedplus"
opt.mouse = "nv"
