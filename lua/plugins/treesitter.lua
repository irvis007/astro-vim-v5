-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "bash",
      "go",
      "json",
      "yaml",
      "terraform",
      "hcl",
      "markdown",
      "markdown_inline",
      "html",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
