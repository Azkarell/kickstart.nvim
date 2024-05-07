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

      opts.theme = 'catppuccin'
      opts.extensions = { 'quickfix' }
    end,
  },
}
