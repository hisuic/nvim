-- lua/plugins/oil.lua
return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  init = function()
    local group = vim.api.nvim_create_augroup("OilAutoPreview", { clear = true })

    vim.api.nvim_create_autocmd("User", {
      group = group,
      pattern = "OilEnter",
      callback = function(event)
        local bufnr = event.data and event.data.buf

        vim.schedule(function()
          if not bufnr or not vim.api.nvim_buf_is_valid(bufnr) then
            return
          end
          if vim.api.nvim_get_current_buf() ~= bufnr then
            return
          end

          local oil = require("oil")
          if oil.get_cursor_entry() then
            oil.open_preview()
          end
        end)
      end,
    })
  end,
  opts = {
    default_file_explorer = true, -- disable netrw and use oil when opening a directory
    columns = { -- what we see with oil
      "icon",
      "permissions",
      "size",
      "mtime",
    },
    view_options = { -- show hidden files
      show_hidden = true,
    },
    keymaps = { -- actions with vim-like kepmaps
      ["<CR>"] = "actions.select",          -- open a file or directory
      ["-"] = "actions.parent",             -- open parent directory
      ["_"] = "actions.open_cwd",           -- open current working directory
      ["<C-v>"] = "actions.select_vsplit",  -- vertical split right and open file
      ["<C-s>"] = "actions.select_split",   -- horizontal split below and open file
      ["<C-p>"] = "actions.preview",        -- see previews without opening the file
      ["q"] = "actions.close",              -- close
    },
  },
}
