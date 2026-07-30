local parsers = {
  "bash",
  "c",
  "css",
  "diff",
  "dockerfile",
  "ecma",
  "gitattributes",
  "gitcommit",
  "gitignore",
  "html",
  "html_tags",
  "javascript",
  "jsx",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "python",
  "query",
  "regex",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "yaml",
  "rust",
  "toml",
}

return {
  {
    "neovim-treesitter/nvim-treesitter",
    dependencies = { "neovim-treesitter/treesitter-parser-registry" },
    lazy = false,
    build = function()
      require("nvim-treesitter").install(parsers, { summary = true }):wait(300000)
    end,
    opts = {
      install_dir = vim.fn.stdpath("data") .. "/site",
      ensure_installed = parsers,
    },
    config = function(_, opts)
      local treesitter = require("nvim-treesitter")

      treesitter.setup({
        install_dir = opts.install_dir,
      })

      local filetype_set = {}

      for _, parser in ipairs(opts.ensure_installed) do
        for _, filetype in ipairs(vim.treesitter.language.get_filetypes(parser)) do
          filetype_set[filetype] = true
        end
      end

      local filetypes = vim.tbl_keys(filetype_set)
      table.sort(filetypes)

      vim.api.nvim_create_autocmd("FileType", {
        pattern = filetypes,
        callback = function(args)
          vim.treesitter.start(args.buf)
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
