-- GitLab CI/CD support
return {
  {
    "AstroNvim/astrolsp",
    optional = true,
    ---@type AstroLSPOpts
    opts = {
      ---@diagnostic disable: missing-fields
      config = {
        yamlls = {
          settings = {
            yaml = {
              schemas = {
                ["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = {
                  ".gitlab-ci.yml",
                  "**/.gitlab-ci*.yml",
                },
              },
            },
          },
        },
      },
    },
  },
}
