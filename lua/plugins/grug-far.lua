return {
  {
    "MagicDuck/grug-far.nvim",
    cmd = {
      "GrugFar",
      "GrugFarWithin",
    },
    keys = {
      -- プロジェクト全体の検索・置換
      {
        "<leader>sR",
        function()
          require("grug-far").open()
        end,
        mode = "n",
        desc = "Search and Replace Project",
      },

      -- 今開いているファイルだけ検索・置換
      {
        "<leader>sr",
        function()
          require("grug-far").open({
            prefills = {
              paths = vim.fn.expand("%"),
            },
          })
        end,
        mode = "n",
        desc = "Search and Replace Current File",
      },

      -- カーソル下の単語を検索
      {
        "<leader>sw",
        function()
          require("grug-far").open({
            prefills = {
              search = vim.fn.expand("<cword>"),
            },
          })
        end,
        mode = "n",
        desc = "Search Current Word",
      },

      -- Visual選択した文字列を検索
      {
        "<leader>sr",
        function()
          require("grug-far").with_visual_selection()
        end,
        mode = "v",
        desc = "Search Visual Selection",
      },
    },
    opts = {
      headerMaxWidth = 80,
    },
  },
}
