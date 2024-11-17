local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "intelephense" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.ts_ls.setup {}
lspconfig.volar.setup {
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
  init_options = {
    typescript = {
      tsserver = {
        disableAutomaticTypeAcquisition = true,
        maxTsServerMemory = 512, -- Adjust based on your system's capacity
      },
    },
    vue = {
      hybridMode = false,
      useWorkspaceDependencies = false,
    },
  },
}

-- lspconfig.phpactor.setup {
--   root_dir = function(_)
--     return vim.loop.cwd()
--   end,
--   init_options = {
--     ["language_server.diagnostics_on_update"] = false,
--     ["language_server.diagnostics_on_open"] = true,
--     ["language_server.diagnostics_on_save"] = true,
--     ["language_server_phpstan.enabled"] = false,
--     ["language_server_psalm.enabled"] = false,
--   }
-- }

--
-- lspconfig.pyright.setup { blabla}
