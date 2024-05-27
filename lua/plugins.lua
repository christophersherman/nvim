return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
    use 'junegunn/fzf.vim'
    use 'lervag/vimtex'
    use 'fatih/vim-go'
    use 'tpope/vim-commentary'
    use 'neovim/nvim-lspconfig'
    use {
      'hrsh7th/nvim-cmp',
      requires = {
        'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
        'hrsh7th/cmp-buffer',   -- Buffer completions
        'hrsh7th/cmp-path',     -- Path completions
        'hrsh7th/cmp-cmdline',  -- Command line completions
        'saadparwaiz1/cmp_luasnip', -- Snippet completions
        'L3MON4D3/LuaSnip',    -- Snippet engine
        'rafamadriz/friendly-snippets' -- A bunch of snippets to use
      }
}
end)

