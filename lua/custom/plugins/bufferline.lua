return {
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        --  highlights = require('neopywal.theme.plugins.bufferline').setup(),
        highlights = require('catppuccin.groups.integrations.bufferline').get(),
        options = {

          diagnostics = 'nvim_lsp',
        },
      }
      vim.keymap.set('n', '<Tab>', '<cmd>bnext<cr>')
      vim.keymap.set('n', '<S-Tab>', '<cmd>bprev<cr>')
    end,
  },
}
