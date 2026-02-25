return {
  "m4xshen/hardtime.nvim",
  lazy = false,
  opts = {
    disabled_keys = {
      ["<Insert>"] = { "n", "i" },
      ["<Home>"] = { "n", "i" },
      ["<End>"] = { "n", "i" },
      ["<PageUp>"] = { "n", "i" },
      ["<PageDown>"] = { "n", "i" },
    },
    timeout = 10000,
  },
  dependencies = { "MunifTanjim/nui.nvim" },
}
