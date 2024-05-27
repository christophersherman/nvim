-- lspconfig for gopls
require('lspconfig').gopls.setup{
  cmd = {"gopls", "serve"},
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,  -- Highlight unused parameters
        shadow = true,        -- Highlight shadowed variables
      },
    },
  },
  on_attach = function(client, bufnr)
    -- Set buffer-specific options
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')  -- Use LSP for omnifunc
  end
}

