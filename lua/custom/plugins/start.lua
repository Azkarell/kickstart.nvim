return {
  {
    'nvimdev/dashboard-nvim',

    dependencies = { { 'nvim-tree/nvim-web-devicons', 'folke/snacks.nvim' } },

    event = 'VimEnter',
    config = function()
      --local builtin = require 'telescope.builtin'
      require('dashboard').setup {
        change_to_vcs_root = true,
        theme = 'hyper',
        config = {
          week_header = {
            enable = true,
          },
          shortcut = {
            { desc = '󰱼 Search Files', icon_hl = '@variable', group = 'Label', key = 'f', action = Snacks.picker.files },
            { desc = '󰊳  Update', group = '@property', action = 'Lazy update', key = 'u' },
          },
          project = {
            action = function(path)
              Snacks.picker.files {
                cwd = path,
              }
            end,
          },
        },
      }
    end,
  },
}
