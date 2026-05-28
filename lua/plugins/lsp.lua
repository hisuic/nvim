return {
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "html",
          "cssls",
          "pyright",
          "clangd",
          "rust_analyzer",
          "bashls",
          "jsonls",
          "yamlls",
          "marksman",
        },
      })

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      vim.lsp.config("ts_ls", {})
      vim.lsp.config("html", {})
      vim.lsp.config("cssls", {})
      vim.lsp.config("pyright", {})
      vim.lsp.config("clangd", {})
      vim.lsp.config("rust_analyzer", {})
      vim.lsp.config("bashls", {})
      vim.lsp.config("jsonls", {})
      vim.lsp.config("yamlls", {})
      vim.lsp.config("marksman", {})

      vim.lsp.enable({
        "lua_ls",
        "ts_ls",
        "html",
        "cssls",
        "pyright",
        "clangd",
        "rust_analyzer",
        "bashls",
        "jsonls",
        "yamlls",
        "marksman",
      })
    end,
  },
}
