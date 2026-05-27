return {
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    enable = true,

    -- 表示する最大行数
    max_lines = 3,

    -- 小さいウィンドウでは邪魔なので、一定行数以下なら無効化
    min_window_height = 20,

    -- 行番号を表示
    line_numbers = true,

    -- context部分を複数行表示するときの区切り
    separator = nil,

    -- 表示順。内側のcontextを優先
    mode = "cursor",

    -- context部分をz-index高めに表示
    zindex = 20,

    -- 現在位置に近いcontextだけ表示
    multiline_threshold = 20,

    -- trimする方向
    trim_scope = "outer",
  },
  keys = {
    {
      "[c",
      function()
        require("treesitter-context").go_to_context(vim.v.count1)
      end,
      desc = "Go to treesitter context",
    },
    {
      "<leader>ut",
      function()
        require("treesitter-context").toggle()
      end,
      desc = "Toggle treesitter context",
    },
  },
}
