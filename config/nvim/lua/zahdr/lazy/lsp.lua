return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- Setup mason
      require("mason").setup()

      -- Setup mason-lspconfig with desired servers
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "bashls",
          "gopls",
          "pyright",
          "yamlls",
          "dockerls",
          "docker_compose_language_service",
        },
      })

      -- Setup individual servers
      local lspconfig = require("lspconfig")

      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        },
        bashls = {},
        gopls = {},
        pyright = {},
        yamlls = {},
        dockerls = {},
        docker_compose_language_service = {},
      }

      for server, config in pairs(servers) do
        lspconfig[server].setup(config)
      end

      -- Global LSP diagnostic config
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })
    end,
  },
}

