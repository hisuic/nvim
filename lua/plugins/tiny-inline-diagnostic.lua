return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup({
        preset = "modern",

        options = {
          show_source = true,
          use_icons_from_diagnostic = true,
        },
      })

      -- Neovim標準のvirtual_textを切る
      -- tiny-inline-diagnosticと二重表示になるのを防ぐ
      vim.diagnostic.config({
        virtual_text = false,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })
    end,
  },
}
