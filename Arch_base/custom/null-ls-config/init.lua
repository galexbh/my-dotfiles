local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting

local M = {}

M.setup = function()
   null_ls.setup {
      sources = {
         formatting.prettier.with {
            filetypes = { "html", "markdown", "css", "typescript", "javascript", "json", "svelte" },
         },
         formatting.autopep8.with { filetypes = { "python" } },
         formatting.gofmt.with { filetypes = { "go" } },
         -- formatting.shfmt,
         formatting.clang_format,
         -- formatting.cmake_format,
         -- formatting.dart_format,
         formatting.stylua.with { filetypes = { "lua" } },
         -- formatting.isort,
         -- formatting.codespell.with({filetypes = {'markdown'}})
      },
      on_attach = function(client)
         if client.resolved_capabilities.document_formatting then
            vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
         end
      end,
   }
end

return M
