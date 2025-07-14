return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- Project management keybindings under <leader>P (capital P)
          ["<leader>P"] = { desc = "Project" }, -- This creates the menu category
          ["<leader>Pp"] = {
            function() require("neovim-project").discover() end,
            desc = "Discover projects",
          },
          ["<leader>Ph"] = {
            function() require("neovim-project").history() end,
            desc = "Project history",
          },
          ["<leader>Pl"] = {
            function() require("neovim-project").last_project() end,
            desc = "Last project",
          },
          ["<leader>Pf"] = {
            ":Telescope neovim-project discover<CR>",
            desc = "Find projects (Telescope)",
          },
          ["<leader>Pr"] = {
            ":Telescope neovim-project history<CR>",
            desc = "Recent projects (Telescope)",
          },
          ["<leader>Ps"] = {
            function() require("neovim-project").save_project() end,
            desc = "Save current project",
          },
          ["<leader>Pd"] = {
            function() require("neovim-project").delete_project() end,
            desc = "Delete project",
          },
        },
      },
    },
  },
}
