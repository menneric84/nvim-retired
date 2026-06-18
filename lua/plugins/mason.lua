return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup({
        registries = {
          "github:mason-org/mason-registry",
          "github:Crashdummyy/mason-registry",
        },
      })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    lazy = false,
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          -- C#/.NET (Roslyn)
          "roslyn",
          -- Optional but useful for debugging .NET
          "netcoredbg",

          -- TypeScript/Vue
          "typescript-language-server",
          "vue-language-server",
          "vtsls",
        },
        auto_update = false,
        run_on_start = true,
      })
    end,
  },
}
