-- None-ls configuration (using default sources from language packs)
-- To add custom formatters/linters, see:
-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    -- Using default sources from AstroNvim and language packs
    -- Uncomment to add custom sources:
    -- local null_ls = require "null-ls"
    -- opts.sources = require("astrocore").list_insert_unique(opts.sources, {
    --   null_ls.builtins.formatting.stylua,
    --   null_ls.builtins.formatting.prettier,
    -- })
  end,
}
