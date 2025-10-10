---@diagnostic disable: missing-fields
return {
  {
    'rcarriga/nvim-notify',
    config = function()
      require('notify').setup {
        background_colour = '#000000',
        max_width = 50,
        max_height = 50,
        render = 'wrapped-compact',
      }
    end,
  },
}
