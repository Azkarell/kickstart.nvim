return {
  {
    '3rd/diagram.nvim',
    dependencies = {
      { '3rd/image.nvim' },
    },
    opts = {},
    config = function(opts)
      require('diagram').setup {
        integrations = {
          require 'diagram.integrations.markdown',
        },
        renderer_options = {
          mermaid = {
            theme = 'dark',
            background = 'transparent',
          },
        },
      }
    end,
  },
}
