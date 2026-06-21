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

      local mason_lspconfig = require("mason-lspconfig")
      mason_lspconfig.setup({
        ensure_installed = {
          "bashls",
          "docker_compose_language_service",
          "dockerls",
          "gopls",
          "helm_ls",
          "lua_ls",
          "pyright",
          "ts_ls",
          "yamlls",
        },
      })

      local lsp_defaults = {
        --capabilities = vim.lsp.protocol.make_client_capabilities(),
        capabilities =require("cmp_nvim_lsp").default_capabilities(),
      }

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
        ts_ls = {},
        helm_ls = {
            settings = {
                ["helm-ls"] = {
                    yamlls = {
                        path = "yaml-language-server",
                    },
                },
            },
        },
      }

      for server, config in pairs(servers) do
        local merged_config = vim.tbl_deep_extend("force", lsp_defaults, config)
        vim.lsp.config(server, merged_config)
      end

      mason_lspconfig.setup_handlers = nil
      mason_lspconfig.get_installed_servers(function(servers)
        for _, server in ipairs(servers) do
          local config = vim.lsp.get_config(server) if config then
            vim.lsp.start(config)
          end
        end
      end)

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

