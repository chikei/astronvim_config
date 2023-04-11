return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      null_ls.builtins.code_actions.shellcheck,
      -- Set a linter
      null_ls.builtins.diagnostics.actionlint,
      null_ls.builtins.diagnostics.eslint,
      null_ls.builtins.diagnostics.gitlint,
      null_ls.builtins.diagnostics.luacheck,
      null_ls.builtins.diagnostics.markdownlint,
      null_ls.builtins.diagnostics.mypy,
      null_ls.builtins.diagnostics.shellcheck,
      null_ls.builtins.diagnostics.vulture,
      null_ls.builtins.diagnostics.yamllint,
      -- Set a formatter
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.jq,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.shellharden,
      null_ls.builtins.formatting.shfmt,
      null_ls.builtins.formatting.stylua,
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }
    return config -- return final config table
  end,
}
