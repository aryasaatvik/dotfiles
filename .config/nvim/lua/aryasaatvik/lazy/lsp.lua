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
        ensure_installed = { "lua_ls", "ts_ls", "pyright" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      -- Setup language servers
      lspconfig.lua_ls.setup{}
      -- Use tsserver for TypeScript/JavaScript
      lspconfig.ts_ls.setup{}
      lspconfig.pyright.setup{}
      
      -- Global LSP keybindings
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Show hover information" })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code actions" })
    end
  }
}

