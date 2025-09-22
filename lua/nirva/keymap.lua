-- system yank and paste
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>p', '"+p')

-- toggle file explorer
vim.keymap.set('n', '<leader>e', function()
    vim.cmd('NvimTreeToggle')
end)

-- lsp keymappings
vim.keymap.set('n', '<leader>i', function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled(), { 0 })
end)
vim.keymap.set('n', '<leader>m', function()
    vim.lsp.buf.format()
end)
vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic" })
-- vim.keymap.set('n', '<Leader>n', function()
--     vim.o.number = not vim.o.number
--     if vim.o.number == true then
--         vim.o.statuscolumn = '%s%3{v:lnum} %2{v:relnum} '
--     else
--         vim.o.statuscolumn = '%s %2{v:relnum} '
--     end
-- end, { desc = "Toggle absolute linenumbers" })

-- autocommands for quitting help and other pages
vim.api.nvim_create_autocmd('FileType', {
    pattern = {'markdown', 'help', 'checkhealth', 'lazy', 'TelescopePrompt' },
    command = 'nnoremap <buffer> q <cmd>q!<cr>'
})

-- telescope commands
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
