return {
  {
    'RedsXDD/neopywal.nvim',
    dependencies = { {
      'rktjmp/fwatch.nvim',
      opt = false,
    } },
    lazy = false,
    priority = 1000,
    config = function()
      require('neopywal').setup {
        transparent_background = true,
        use_wallust = true,
        plugins = {
          nvimtree = true,
          noice = true,
          mini = {
            pick = true,
          },
          lsp = {
            enabled = true,
            virtual_text = {
              errors = { 'bold', 'italic' },
              hints = { 'bold', 'italic' },
              information = { 'bold', 'italic' },
              ok = { 'bold', 'italic' },
              warnings = { 'bold', 'italic' },
              unnecessary = { 'bold', 'italic' },
            },
            underlines = {
              errors = { 'undercurl' },
              hints = { 'undercurl' },
              information = { 'undercurl' },
              ok = { 'undercurl' },
              warnings = { 'undercurl' },
            },
            inlay_hints = {
              background = true,
              style = { 'bold', 'italic' },
            },
          },
        },
      }
      vim.cmd.colorscheme 'neopywal'
      -- local fwatch = require 'fwatch'
      -- fwatch.watch('/home/azkarell/.cache/wal/colors-wal.vim', 'colorscheme neopywal')
    end,
  },
}
