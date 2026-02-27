-- Enhanced Terraform tooling
-- Keybindings are in localleader-keybindings.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    dependencies = {
      {
        "ANGkeith/telescope-terraform-doc.nvim",
        config = function()
          require("telescope").load_extension("terraform_doc")
        end,
      },
    },
  },
}
