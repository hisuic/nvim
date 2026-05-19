return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = true,

          -- LazyVimっぽく「今いるブロック」を上から下に落ちる感じで描画
          use_treesitter = true,
          duration = 200,
          delay = 20,

          -- 線の見た目
          chars = {
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "╭",
            left_bottom = "╰",
            right_arrow = "─",
          },

          style = {
            "#7aa2f7",
          },

          exclude_filetypes = {
            dashboard = true,
            alpha = true,
            starter = true,
            help = true,
            lazy = true,
            mason = true,
            trouble = true,
            oil = true,
            NvimTree = true,
          },
        },

        indent = {
          enable = true,

          -- indent guide の見た目
          chars = {
            "│",
          },

          style = {
            "#3b4261",
          },

          exclude_filetypes = {
            dashboard = true,
            alpha = true,
            starter = true,
            help = true,
            lazy = true,
            mason = true,
            trouble = true,
            oil = true,
            NvimTree = true,
          },
        },

        line_num = {
          enable = false,
        },

        blank = {
          enable = false,
        },
      })
    end,
  },
}
