return {
  {
    'akinsho/toggleterm.nvim',
    config = function()
      if vim.fn.has 'win32' == 1 then
        require('toggleterm').setup {
          shell = 'pwsh.exe',
          open_mapping = [[<C-\>]],
        }
      else
        require('toggleterm').setup {
          open_mapping = [[<C-\>]],
        }
      end
      local opts = { buffer = 0 }
      vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', {
        desc = 'Open [f]oat [T]erminal',
      })
      vim.keymap.set('n', '<leader>ts', '<cmd>TermSelect<cr>')

      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    end,
  },
}
