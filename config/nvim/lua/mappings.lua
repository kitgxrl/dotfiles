-- Make my life a bit easier..

function map(mode, mapping, todo, opts)
    if opts == nil then
        opts = { noremap = true, silent = true }
    end

    vim.api.nvim_set_keymap(mode, mapping, todo, opts)
end

-- Set map leader

vim.g.mapleader = ' '

-- Buffer movement

map('n', '<leader>wh', '<C-w>h')
map('n', '<leader>wj', '<C-w>j')
map('n', '<leader>wk', '<C-w>k')
map('n', '<leader>wl', '<C-w>l')

-- Tenescope

map('n', '<leader>ff', '<cmd>:Telescope find_files<CR>')
map('n', '<leader>fg', '<cmd>:Telescope live_grep<CR>')
map('n', '<leader>fb', '<cmd>:Telescope buffers<CR>')

-- Tenminal

map('n', '<leader>otr', '<cmd>:vsplit term://fish<CR>')
map('n', '<leader>otd', '<cmd>:split term://fish<CR>')
map('t', '<ESC>', '<C-\\><C-n>')

-- NvnmTree toggle

map('n', '<leader>oe', '<cmd>:NvimTreeToggle<CR>')
