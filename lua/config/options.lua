local opt = vim.opt

-- Indent
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smartindent = true

-- UI
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.cursorcolumn = true
opt.number = true
opt.relativenumber = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Undo
local undodir = vim.fn.stdpath("state") .. "/undo"

if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

opt.undofile = true
opt.undodir = undodir
opt.undolevels = 500
opt.undoreload = 2000

-- Split
opt.splitright = true
opt.splitbelow = true

-- Scroll
opt.scrolloff = 8
opt.sidescrolloff = 12
opt.sidescroll = 8

-- Wrap
opt.wrap = false

-- Markdonw setting
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    opt_local = vim.opt_local
    opt_local.wrap = true
    opt_local.linebreak = true
    opt_local.spell = false
    opt_local.conceallevel = 2
  end,
})
