require('lspconfig').pyright.setup{
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",  -- Options are "off", "basic", "strict"
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
      }
    }
  },
  on_attach = function(client, bufnr)
    -- Set buffer-specific options
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')  -- Use LSP for omnifunc
    
    -- Additional settings and keybindings can be set here
    -- For example, LSP-specific keybindings for navigation, code actions, etc.
  end
}

