return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      -- make sure nested tables exist
      opts.indent = vim.tbl_deep_extend("force", opts.indent or {}, {
        enabled = true,
      })

      opts.picker = opts.picker or {}
      opts.picker.win = opts.picker.win or {}
      opts.picker.win.preview = opts.picker.win.preview or {}
      opts.picker.win.preview.wo = vim.tbl_deep_extend("force", opts.picker.win.preview.wo or {}, {
        number = false,
        relativenumber = false,
        signcolumn = "no",
        wrap = true, -- ensure wrapped preview text
      })

      -- Ensure opts.picker exists
      opts.picker = opts.picker or {}
      opts.picker.sources = opts.picker.sources or {}

      -- Configure the files source to show gitignored files
      local defaultConfig = {
        hidden = true,
        ignored = true,
      }
      opts.picker.sources.files = defaultConfig
      opts.picker.sources.explorer = defaultConfig

      --[[
      -- ensures ignored files and dotfiles are visible
      opts.picker.sources = opts.picker.sources or {}
      opts.picker.sources.files = vim.tbl_deep_extend("force", opts.picker.sources.files or {}, {
        hidden = true, -- show hidden files
        follow = true, -- follow symlinks
        no_ignore = true, -- don't respect .gitignore
        no_ignore_parent = true, -- don't respect .gitignore in parent directories
      })
      --]]

      return opts
    end,
  },
}
