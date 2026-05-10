return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",

    config = function()
      require("toggleterm").setup({
        size = 15,
        open_mapping = [[<C-\>]],
        hide_numbers = true,
        shade_terminals = true,
        start_in_insert = true,
        insert_mappings = true,
        direction = "float",

        float_opts = {
          border = "rounded",
        },
      })

      local Terminal = require("toggleterm.terminal").Terminal

      local float_term = Terminal:new({
        direction = "float",
        hidden = true,
      })

      local horizontal_term = Terminal:new({
        direction = "horizontal",
        size = 15,
        hidden = true,
      })

      vim.keymap.set("n", "<leader>nf", function()
        float_term:toggle()
      end, { desc = "Toggle Floating Terminal" })

      vim.keymap.set("n", "<leader>nt", function()
        horizontal_term:toggle()
      end, { desc = "Toggle Split Terminal" })

      vim.keymap.set("t", "jj", [[<C-\><C-n>]], {
        desc = "Exit Terminal Mode",
      })
    end,
  },
}
