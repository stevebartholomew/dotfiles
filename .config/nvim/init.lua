vim.opt.termguicolors = true -- Enable 24-bit RGB colors
vim.opt.background = "dark" -- Set background mode
vim.cmd("colorscheme twilight256")
vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })

vim.opt.number = true -- Show line numbers

vim.g.mapleader = "," -- Set the leader key

-- Plugin configuration (requires 'nvim-plug')
local plug_path = vim.fn.stdpath('data') .. "/site/autoload/plug.vim"
if vim.fn.empty(vim.fn.glob(plug_path)) > 0 then
    vim.fn.system({
        "curl", "-fLo", plug_path, "--create-dirs",
        "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    })
end

vim.cmd([[
call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'neovim/nvim-lspconfig'
call plug#end()
]])

-- Key mappings for Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- ruby-lsp
require'lspconfig'.ruby_lsp.setup{}

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.rb",
  callback = function()
    vim.lsp.buf.format()
  end,
})
