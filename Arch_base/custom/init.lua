local hooks = require "core.hooks"

hooks.add("setup_mappings", function(map)
   map("n", "<leader>cc", ":Telescope <CR>")
   map("n", "<leader>q", ":q <CR>")
end)

hooks.add("install_plugins", function(use)
   use {
      "williamboman/nvim-lsp-installer",
      config = function()
         local lsp_installer = require "nvim-lsp-installer"

         lsp_installer.on_server_ready(function(server)
            local opts = {}

            server:setup(opts)
            vim.cmd [[ do User LspAttachBuffers ]]
         end)
      end,
   }

   use {
      "jose-elias-alvarez/null-ls.nvim",
      after = "nvim-lspconfig",
      config = function()
         require("custom.null-ls-config").setup()
      end,
   }
end)
