return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "bashls",
--          "clangd",
--          "neocmake",
          "dockerls",
          "docker_compose_language_service",
          "eslint",
          "golangci_lint_ls",
--          "groovyls",
--          "graphql",
          "html",
--          "helm_ls",
          "kotlin_language_server",
--          "jqls",
          "tsserver"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.bashls.setup({})
--      lspconfig.clangd.setup({})
--      lspconfig.neocmake.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.eslint.setup({})
      lspconfig.golangci_lint_ls.setup({})
--      lspconfig.groovyls.setup({})
--      lspconfig.graphql.setup({})
      lspconfig.html.setup({})
--      lspconfig.helm_ls.setup({})
      lspconfig.kotlin_language_server.setup({})
--      lspconfig.jqls.setup({})
      lspconfig.tsserver.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
