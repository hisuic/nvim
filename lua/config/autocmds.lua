vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 200,
    })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    local opt_local = vim.opt_local

    opt_local.wrap = true
    opt_local.linebreak = false
    opt_local.spell = false
    opt_local.conceallevel = 2
  end,
})
