return {
  {
    'nvim-neorg/neorg',
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by defaultLua
    version = '*', -- Pin Neorg to the latest stable release
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {},
          ['core.completion'] = {
            config = {
              engine = 'nvim-cmp',
            },
          },
          ['core.concealer'] = {},
          ['core.dirman'] = {
            config = {
              workspaces = {
                notes = '~/neorg/notes',
              },
            },
          },
          ['core.export'] = {},
          ['core.export.markdown'] = {},
          ['core.presenter'] = {
            config = {
              zen_mode = 'zen-mode',
            },
          },
          ['core.summary'] = {},
          ['core.text-objects'] = {},
          ['core.integrations.nvim-cmp'] = {},
        },
      }
    end,
  },
}
