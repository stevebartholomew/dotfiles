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

vim.keymap.set("n", "<Leader>hw", "<cmd>HopWord<cr>") -- easymotion highlight words
vim.keymap.set("n", "<Leader>hc", "<cmd>HopChar2<cr>") -- easymotion highlight 1 or 2 characters entered
vim.keymap.set("n", "<Leader>hl", "<cmd>HopLineStart<cr>") -- easymotion highlight lines
vim.keymap.set("n", "<Leader>h/", "<cmd>HopPattern<cr>") -- easymotion highlight matches for pattern entered
vim.keymap.set("n", "<Leader>ha", "<cmd>HopAnywhereCurrentLine<cr>") -- easymotion highlight every character on current line

