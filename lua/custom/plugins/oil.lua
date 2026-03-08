return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', 'benomahony/oil-git.nvim' },
    config = function()
      local detail = false
      require('oil').setup {
        keymaps = {
          ['gd'] = {
            desc = 'Toggle file detail view',
            callback = function()
              detail = not detail
              if detail then
                require('oil').set_columns { 'icon', 'permissions', 'size', 'mtime' }
              else
                require('oil').set_columns { 'icon' }
              end
            end,
          },
          ['yp'] = {
            desc = 'Yank to system clipboard',
            callback = 'actions.copy_to_system_clipboard',
          },
          ['yq'] = {
            desc = 'send to quickfix list',
            callback = 'actions.send_to_qflist',
            opts = {
              action = 'r',
            },
          },
          ['yy'] = {
            desc = 'yank relative to cwd',
            callback = 'actions.yank_entry',
            opts = {
              modify = ':.',
            },
          },
        },
      }
    end,
  },
}
