-- Set up some basic settings
vim.opt.number = true                 -- Show line numbers
vim.opt.relativenumber = true         -- Show relative line numbers
vim.opt.expandtab = true              -- Use spaces instead of tabs
vim.opt.shiftwidth = 4                -- Set indentation width to 4 spaces
vim.opt.tabstop = 4                   -- Set tab width to 4 spaces
vim.opt.smartindent = true            -- Enable smart indentation
vim.opt.autoindent = true             -- Enable auto indentation
vim.opt.wrap = false                  -- Disable line wrap
vim.opt.cursorline = true             -- Highlight the current line
vim.opt.ignorecase = true             -- Case insensitive search
vim.opt.smartcase = true              -- Case sensitive search if pattern contains uppercase
vim.opt.hlsearch = true               -- Highlight search results
vim.opt.incsearch = true              -- Show search matches as you type
vim.opt.scrolloff = 8                 -- Keep 8 lines of context above and below cursor
vim.opt.clipboard = "unnamedplus"     -- Enable system clipboard
vim.opt.termguicolors = true          -- Enable true colors in terminal
vim.opt.wrap = true       -- Enable line wrapping
vim.opt.linebreak = true  -- Wrap lines at convenient points, e.g. after spaces or punctuation
vim.opt.colorcolumn = "80"  -- Set a vertical line at the 80th column
vim.opt.columns = 80  -- Set the window width to 80 characters


-- Install plugins
vim.cmd [[
  let g:plug_url_format = 'https://github.com/%s'
  call plug#begin(stdpath('data') . '/plugged')

  Plug 'tpope/vim-fugitive'
  Plug 'neovim/nvim-lspconfig'          
  Plug 'hrsh7th/nvim-compe'             
  Plug 'jiangmiao/auto-pairs'
  Plug 'morhetz/gruvbox'
  Plug 'preservim/nerdtree'             
  Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['json'] }
  Plug 'luochen1990/rainbow'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'tpope/vim-dispatch'             

  call plug#end()
]]

-- Set a colorscheme (this example uses 'nord')
-- Source colorscheme.vim
vim.cmd("source ~/.config/nvim/colorscheme.vim")


-- Enable Rainbow brackets
vim.g.rainbow_active = 1

-- Require the plugin configuration files
require("plugins.auto-pairs")
require("plugins.clang_format")
require("plugins.dispatch")
require("plugins.lspconfig")
require("plugins.nerd-tree")
require("plugins.nvim-compe")
require("plugins.prettier")


-- Enable Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  },
  fold = {
    enable = true
  }
}

-- Format JSON files on save
vim.cmd [[
  autocmd BufWritePre *.json PrettierAsync
]]

vim.cmd('highlight ColorColumn guibg=white')

-- Configure Prettier
vim.g['prettier#config#print_width'] = 80
vim.g['prettier#config#tab_width'] = 2
vim.g['prettier#config#use_tabs'] = 'false'
vim.g['prettier#config#single_quote'] = 'false'
vim.g['prettier#config#trailing_comma'] = 'none'

