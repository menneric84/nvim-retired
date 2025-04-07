return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local eslint = require("eslint")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier,
      },
    })
eslint.setup({
  bin = 'eslint', -- or `eslint_d`
  code_actions = {
    enable = true,
    apply_on_save = {
      enable = false,
      types = { "directive", "problem", "suggestion", "layout" },
    },
  },
  diagnostics = {
    enable = true,
    report_unused_disable_directives = false,
    run_on = "type", -- or `save`
  },
})

    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
  end,
}
