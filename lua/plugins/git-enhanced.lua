-- Enhanced git integration
-- Keybindings are in localleader-keybindings.lua
return {
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    opts = {
      enabled = false, -- Start disabled, toggle with keybinding
      message_template = " <author> • <date> • <summary>",
      date_format = "%r",
      virtual_text_column = 80,
    },
  },
  {
    "akinsho/git-conflict.nvim",
    event = "BufRead",
    version = "*",
    opts = {
      default_mappings = true,
      default_commands = true,
      disable_diagnostics = false,
      list_opener = "copen",
      highlights = {
        incoming = "DiffAdd",
        current = "DiffText",
      },
    },
  },
}
