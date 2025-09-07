-- system yank and paste
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>p', '"+p')

-- netrw file explorer
vim.keymap.set('n', '<leader>e', function()
  if vim.bo.filetype == 'netrw' then
    return '<cmd>close<cr>'
  end

  return '<cmd>Lexplore<cr>'
end, {expr = true, desc = 'Toggle file explorer'})
