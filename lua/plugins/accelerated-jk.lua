return {
  {
    "rainbowhxch/accelerated-jk.nvim",
    event = "VeryLazy",
    config = function()
      require("accelerated-jk").setup({
        mode = "time_driven",
        enable_deceleration = false,

        -- 何ms以上間隔が空いたら加速をリセットするか
        acceleration_limit = 150,

        -- 加速の段階
        -- 長押ししていると、1行 → 2行 → 3行...みたいに増える
        acceleration_table = { 7, 12, 17, 21, 24, 26, 28, 30 },

        -- 減速を使わない場合はこれでOK
        deceleration_table = { { 150, 9999 } },
      })

      vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)", {})
      vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)", {})
    end,
  },
}
