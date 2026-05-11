return {
  {
    "MeanderingProgrammer/render-markdown.nvim",

    ft = { "markdown" },

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      require("render-markdown").setup({
        enabled = true,

        heading = {
          enabled = true,
          sign = true,
        },

        bullet = {
          enabled = true,
        },

        checkbox = {
          enabled = true,
        },

        code = {
          enabled = true,
          sign = false,
          width = "block",
          right_pad = 1,
        },

        quote = {
          enabled = true,
        },
      })
    end,
  },
}
