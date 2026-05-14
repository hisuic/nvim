return {
  {
    "windwp/nvim-ts-autotag",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      opts = {
        enable_close = true,          -- <div> と打つと </div> を自動追加
        enable_rename = true,         -- <div></div> の片方を変えるともう片方も変更
        enable_close_on_slash = false -- </ を打った時の自動補完
      },
    },
  },
}
