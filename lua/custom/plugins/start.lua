return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      local builtin = require 'telescope.builtin'
      require('dashboard').setup {
        change_to_vcs_root = true,
        theme = 'hyper',
        config = {
          week_header = {
            enable = true,
          },
          shortcut = {
            { desc = '󰱼 Search Files', icon_hl = '@variable', group = 'Label', key = 'f', action = builtin.find_files },
            { desc = '󰊳  Update', group = '@property', action = 'Lazy update', key = 'u' },
          },
          project = {
            action = function(path)
              builtin.find_files {
                cwd = path,
              }
            end,
          },
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
