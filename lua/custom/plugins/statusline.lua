return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { { 'nvim-tree/nvim-web-devicons', opt = true }, { 'arkav/lualine-lsp-progress' } },
    opts = function(_, opts)
      local trouble = require 'trouble'
      local symbols = trouble.statusline {
        mode = 'lsp_document_symbols',
        groups = {},
        title = false,
        filter = { range = true },
        format = '{kind_icon}{symbol.name:Normal}',
      }
      opts.sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = {
          'encoding',
          'fileformat',
          'filetype',
          { symbols.get, cond = symbols.has },
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      }

      opts.extensions = { 'quickfix' }
      local neopywal_lualine = require 'neopywal.theme.plugins.lualine'

      neopywal_lualine.setup {
        -- Any of the color values can either be:
        --   - A color exported by "get_colors()" (e.g.: `color8`)
        --   - A hexadecimal color (e.g.: "#ff0000").
        --   - A function with an optional "C" parameter that returns one of the two options above.
        --     e.g: function(C) return C.color1 end
        mode_colors = {
          normal = 'color4',
          visual = 'color5',
          insert = 'color6',
          command = 'color1',
          replace = 'color2',
          terminal = 'color3',
        },
        styles = {
          a = { 'bold' },
          b = { 'bold' },
          c = { 'bold' },
          x = { 'bold' },
          y = { 'bold' },
          z = { 'bold' },
        },
      }
      opts.theme = 'neopywal'
    end,
  },
}
