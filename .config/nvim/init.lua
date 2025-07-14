vim.opt.termguicolors = true -- Enable 24-bit RGB colors
vim.opt.background = "dark" -- Set background mode
vim.cmd("colorscheme twilight256")
vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })

vim.opt.wrap = false
vim.opt.number = true -- Show line numbers

vim.g.mapleader = "," -- Set the leader key

vim.o.expandtab = true       -- Convert tabs to spaces
vim.o.shiftwidth = 2         -- Number of spaces for each indentation level
vim.o.tabstop = 2            -- Number of spaces a <Tab> counts for
vim.o.softtabstop = 2        -- Number of spaces inserted/deleted with <Tab>/<BS>

-- Plugin configuration (requires 'nvim-plug')
local plug_path = vim.fn.stdpath('data') .. "/site/autoload/plug.vim"
if vim.fn.empty(vim.fn.glob(plug_path)) > 0 then
    vim.fn.system({
        "curl", "-fLo", plug_path, "--create-dirs",
        "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    })
end

vim.api.nvim_set_option("clipboard", "unnamed")

vim.cmd([[
call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'tpope/vim-rails'
Plug 'phaazon/hop.nvim'

call plug#end()
]])

require('plugins.neotree')
require('plugins.cmp')
require('plugins.lsp')
require('plugins.hop')

require('config.keymaps')

