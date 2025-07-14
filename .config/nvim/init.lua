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

call plug#end()
]])

require('plugins.neotree')
require('plugins.cmp')
require('plugins.lsp')

-- Key mappings for Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- pane navigation
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-a>', ':tabprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-e>', ':tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-q>', ':tabclose<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-d>', ':tabnext<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>n', ':Neotree reveal<CR>', {})
vim.keymap.set('n', '<C-f>', ':Neotree reveal<CR>', {})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "Go to references" })

-- Rails
-- Toggle between source and test
vim.keymap.set('n', '<leader>at', ':A<CR>', { desc = 'Alternate between model and test' })

-- Toggle in a vertical split
vim.keymap.set('n', '<leader>av', ':AV<CR>', { desc = 'Alternate in vertical split' })

-- Open corresponding controller/view/model/test with fuzzy matching
vim.keymap.set('n', '<leader>rc', ':Econtroller<CR>', { desc = 'Jump to controller' })
vim.keymap.set('n', '<leader>rm', ':Emodel<CR>', { desc = 'Jump to model' })
vim.keymap.set('n', '<leader>rv', ':Eview<CR>', { desc = 'Jump to view' })
vim.keymap.set('n', '<leader>rt', ':E<CR>', { desc = 'Jump to related test or file' })
