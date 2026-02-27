-- LocalLeader keybindings for DevOps tools
-- Consolidated to avoid astrocore conflicts
return {
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      -- Schedule keybinding setup to ensure LocalLeader is configured
      vim.schedule(function()
        -- Docker keybindings
        vim.keymap.set("n", "<LocalLeader>dc", function()
          if vim.fn.executable "docker" == 0 then
            vim.notify("docker not installed", vim.log.levels.ERROR)
            return
          end
          vim.cmd "!docker compose config --quiet"
          vim.notify("Docker Compose validation complete", vim.log.levels.INFO)
        end, { desc = "Validate docker-compose" })

        vim.keymap.set("n", "<LocalLeader>dl", function()
          if vim.fn.executable "hadolint" == 0 then
            vim.notify("hadolint not installed", vim.log.levels.ERROR)
            return
          end
          local file = vim.fn.expand "%:p"
          if vim.fn.filereadable(file) == 1 then
            vim.cmd("!hadolint " .. vim.fn.shellescape(file))
          else
            vim.notify("Not a Dockerfile", vim.log.levels.WARN)
          end
        end, { desc = "Lint Dockerfile (hadolint)" })

        -- Git keybindings
        vim.keymap.set("n", "<LocalLeader>gb", "<Cmd>GitBlameToggle<CR>", { desc = "Toggle git blame" })
        vim.keymap.set("n", "<LocalLeader>gc", "<Cmd>GitConflictListQf<CR>", { desc = "List git conflicts" })
        vim.keymap.set("n", "<LocalLeader>gn", "<Cmd>GitConflictNextConflict<CR>", { desc = "Next git conflict" })
        vim.keymap.set("n", "<LocalLeader>gp", "<Cmd>GitConflictPrevConflict<CR>", { desc = "Previous git conflict" })

        -- Terraform keybindings
        vim.keymap.set("n", "<LocalLeader>tp", function()
          if vim.fn.executable "terraform" == 0 then
            vim.notify("terraform not installed", vim.log.levels.ERROR)
            return
          end
          local file = vim.fn.expand "%:p:h"
          vim.cmd("TermExec cmd='cd " .. file .. " && terraform plan' direction=horizontal")
        end, { desc = "Terraform plan" })

        vim.keymap.set("n", "<LocalLeader>tv", function()
          if vim.fn.executable "terraform" == 0 then
            vim.notify("terraform not installed", vim.log.levels.ERROR)
            return
          end
          vim.cmd "!terraform validate"
          vim.notify("Terraform validation complete", vim.log.levels.INFO)
        end, { desc = "Terraform validate" })

        vim.keymap.set("n", "<LocalLeader>tf", function()
          if vim.fn.executable "terraform" == 0 then
            vim.notify("terraform not installed", vim.log.levels.ERROR)
            return
          end
          vim.cmd "!terraform fmt"
          vim.notify("Terraform formatted", vim.log.levels.INFO)
        end, { desc = "Terraform format" })

        vim.keymap.set("n", "<LocalLeader>td", "<Cmd>Telescope terraform_doc<CR>", { desc = "Terraform documentation" })
      end)
      return opts
    end,
  },
}
