return {
  {
    "Bekaboo/dropbar.nvim",
    -- dropbar.nvim 側で lazy-load されるので event 指定は基本不要
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    config = function()
      local dropbar_api = require("dropbar.api")

      vim.keymap.set("n", "<leader>;", dropbar_api.pick, {
        desc = "Dropbar Pick",
      })

      vim.keymap.set("n", "[;", dropbar_api.goto_context_start, {
        desc = "Dropbar Go to Context Start",
      })

      vim.keymap.set("n", "];", dropbar_api.select_next_context, {
        desc = "Dropbar Select Next Context",
      })
    end,
  },
}
