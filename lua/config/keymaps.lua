--   ___ ___ .__             .__/\             .__                        --
--  /   |   \|__| ________ __|__)/______ ___  _|__| ____________   ____   --
-- /    ~    \  |/  ___/  |  \  |/  ___/ \  \/ /  |/     \_  __ \_/ ___\  --
-- \    Y    /  |\___ \|  |  /  |\___ \   \   /|  |  Y Y  \  | \/\  \___  --
--  \___|_  /|__/____  >____/|__/____  >   \_/ |__|__|_|  /__|    \___  > --
--        \/         \/              \/                 \/            \/  --

-- keymaps
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("n", "<Space><Space>", "<cmd>wq<CR>", { silent = true })
vim.keymap.set("n", "<Esc><Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Open Lazy" })

-- Buffer switch
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { desc = "Previous buffer" })

-- Tab pages
vim.keymap.set("n", "<leader>tt", "<cmd>tabs<CR>", { desc = "List Tabs" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>tl", "<cmd>tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>th", "<cmd>tabprevious<CR>", { desc = "Previous Tab" })


-- Plugin Keymaps

-- accelerated_jk
vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)", {})
vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)", {})

-- oil.nvim
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Open oil.nvim" })

-- Nvim tree
vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Tree" })

-- Telescope Nvim
local tel = function(fn)
  return function()
    require("telescope.builtin")[fn]()
  end
end

vim.keymap.set("n", "<leader>ff", tel("find_files"), { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", tel("live_grep"), { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", tel("buffers"), { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", tel("help_tags"), { desc = "Help Tags" })

-- gitsigns
local gs = function(fn) return function() require("gitsigns")[fn]() end end

vim.keymap.set("n", "]c", gs("next_hunk"), { desc = "Next Hunk" })
vim.keymap.set("n", "[c", gs("prev_hunk"), { desc = "Prev Hunk" })
vim.keymap.set("n", "<leader>hs", gs("stage_hunk"), { desc = "Stage Hunk" })
vim.keymap.set("n", "<leader>hr", gs("reset_hunk"), { desc = "Reset Hunk" })
vim.keymap.set("n", "<leader>hp", gs("preview_hunk"), { desc = "Preview Hunk" })
vim.keymap.set("n", "<leader>tb", gs("toggle_current_line_blame"), { desc = "Toggle Blame" })

-- Window Management
-- Split window
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Horizontal Split" })

-- Move across windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- Change window size
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>")
