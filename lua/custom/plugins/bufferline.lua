return {
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      local mocha = require('catppuccin.palettes').get_palette 'mocha'
      require('bufferline').setup {
        highlights = require('catppuccin.groups.integrations.bufferline').get {
          styles = { 'italic', 'bold' },
          mocha = {
            background = { fg = mocha.text },
          },
        },
        options = {
          diagnostics = 'nvim_lsp',
        },
      }
      vim.keymap.set('n', '<Tab>', '<cmd>bnext<cr>')
      vim.keymap.set('n', '<S-Tab>', '<cmd>bprev<cr>')
    end,
  },
}
