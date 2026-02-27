-- AWS CLI completion support
return {
  {
    "saghen/blink.cmp",
    optional = true,
    opts = function(_, opts)
      -- Add terminal completion for AWS CLI
      opts.sources = opts.sources or {}
      opts.sources.terminal = opts.sources.terminal or { name = "buffer" }

      return opts
    end,
  },
  {
    "AstroNvim",
    optional = true,
    opts = function(_, opts)
      -- Add AWS-specific terminal helpers
      vim.api.nvim_create_user_command("AWS", function(cmd_opts)
        vim.cmd("TermExec cmd='aws " .. cmd_opts.args .. "' direction=horizontal")
      end, { nargs = "+", desc = "Run AWS CLI command" })

      return opts
    end,
  },
}
