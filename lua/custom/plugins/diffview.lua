return {
  {
    'sindrets/diffview.nvim',
    config = function()
      require('diffview').setup {}
      vim.keymap.set('n', '<leader>dvo', '<Cmd>DiffviewOpen<Enter>', {
        desc = 'Open Diffview',
      })
      vim.keymap.set('n', '<leader>dvc', '<Cmd>DiffviewClose<Enter>', {
        desc = 'Close Diffview',
      })
    end,
  },
}
