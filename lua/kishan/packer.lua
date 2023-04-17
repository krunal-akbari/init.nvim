-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }


    use {
        'https://github.com/joshdick/onedark.vim.git',
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            --dap
            { "mfussenegger/nvim-dap" },
            { "jay-babu/mason-nvim-dap.nvim" },
            { "rcarriga/nvim-dap-ui" },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
            { 'https://github.com/j-hui/fidget.nvim.git' }
        }
    }

    use("folke/zen-mode.nvim")
    use("github/copilot.vim")
    use("eandrju/cellular-automaton.nvim")


    use("https://github.com/tjdevries/cyclist.vim.git")
    use("https://github.com/simrat39/inlay-hints.nvim.git")
    use("https://github.com/glacambre/firenvim.git")
    use("https://github.com/numToStr/Comment.nvim.git")
    use('lewis6991/gitsigns.nvim')

    -- refactoring
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" }
        }
    }
    use { "https://github.com/nvim-treesitter/nvim-treesitter-context.git" }
    use { "https://github.com/ThePrimeagen/git-worktree.nvim.git" }
    use {'krivahtoo/silicon.nvim', run = './install.sh build'}


      use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })


end)
