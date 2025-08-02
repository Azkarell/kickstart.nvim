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
      local C = require('neopywal').get_colors()
      require('neopywal').setup {

        transparent_background = true,
        use_wallust = true,
        plugins = {
          telescope = {
            enabled = true,
          },
          treesitter = true,
          surround = true,
          nvimtree = true,
          noice = true,
          notify = true,
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
    end,
  },
}
