-- Basic globals
-- Basic globals
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.have_nerd_font = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.have_nerd_font = true

require("config.options")
require("config.lazy")
require("config.keymaps")
require("config.autocmds")

-- Basic Settings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.have_nerd_font = true

-- Options Settings
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Undo Settings
local undodir = vim.fn.stdpath("state") .. "/undo"

-- Create undo directory if it doesn't exist
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

vim.opt.undofile = true
vim.opt.undodir = undodir
vim.opt.undolevels = 500        -- undo履歴の深さ
vim.opt.undoreload = 2000       -- ファイル再読み込み時のundo保持

-- Line wrapping on/off
-- vim.opt.wrap = false         -- wrap line
-- vim.opt.sidescroll = 8       -- scroll step
-- vim.opt.sidescrolloff = 12   -- Minimum columns to keep to the left/right
