return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      transparent_background = true,
      integrations = {
        telescope = true,
        mason = true,
        cmp = true,
        treesitter = true,
        mini = {
          enabled = true,
        },
        dashboard = true,
      },
    }
  end,
}
