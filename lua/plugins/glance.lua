return {
  {
    "dnlhc/glance.nvim",
    cmd = "Glance",
    config = function()
      local glance = require("glance")
      local actions = glance.actions

      glance.setup({
        height = 18,
        zindex = 45,

        -- 親ウィンドウの文脈をなるべく保つ
        preserve_win_context = true,

        -- 幅が狭い時は floating 表示にする
        detached = function(winid)
          return vim.api.nvim_win_get_width(winid) < 100
        end,

        preview_win_opts = {
          cursorline = true,
          number = true,
          wrap = true,
        },

        border = {
          enable = true,
          top_char = "―",
          bottom_char = "―",
        },

        list = {
          position = "right",
          width = 0.35,
        },

        theme = {
          enable = true,
          mode = "auto",
        },

        folds = {
          fold_closed = "",
          fold_open = "",
          folded = true,
        },

        indent_lines = {
          enable = true,
          icon = "│",
        },

        winbar = {
          enable = true,
        },

        -- Trouble.nvim も入れているなら true が便利
        use_trouble_qf = true,

        mappings = {
          list = {
            ["j"] = actions.next,
            ["k"] = actions.previous,
            ["<Down>"] = actions.next,
            ["<Up>"] = actions.previous,

            ["<Tab>"] = actions.next_location,
            ["<S-Tab>"] = actions.previous_location,

            ["<C-u>"] = actions.preview_scroll_win(5),
            ["<C-d>"] = actions.preview_scroll_win(-5),

            ["v"] = actions.jump_vsplit,
            ["s"] = actions.jump_split,
            ["t"] = actions.jump_tab,

            ["<CR>"] = actions.jump,
            ["o"] = actions.jump,

            ["l"] = actions.open_fold,
            ["h"] = actions.close_fold,

            ["q"] = actions.close,
            ["Q"] = actions.close,
            ["<Esc>"] = actions.close,

            ["<C-q>"] = actions.quickfix,
          },

          preview = {
            ["q"] = actions.close,
            ["Q"] = actions.close,
            ["<Esc>"] = actions.close,

            ["<Tab>"] = actions.next_location,
            ["<S-Tab>"] = actions.previous_location,
          },
        },
      })
    end,
  },
}
