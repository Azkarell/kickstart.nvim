require 'custom.mappings.tab'
vim.keymap.set('n', '<leader>oo', '<cmd>Oil<cr>', { desc = '[O]il' })
vim.keymap.set('n', '<leader>,,', '<cmd>set spell!<cr>', { desc = 'enable spell checker' })
return {}
