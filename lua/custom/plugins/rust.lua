return {
  {
    'saecki/crates.nvim',
    tag = 'stable',
    config = function()
      require('crates').setup {
        display = {
          icon = '📦',
          auto = true,
        },
      }
    end,
  },
  -- {
  --  'mrcjkb/rustaceanvim',
  --   -- config = function()
  --   --   require('rust-tools').setup {
  --   --     tools = {
  --   --       autoSetHints = true,
  --   --       runnables = {
  --   --         use_telescope = true,
  --   --       },
  --   --       inlay_hints = {
  --   --         show_parameter_hints = true,
  --   --         parameter_hints_prefix = '🤔 ',
  --   --         other_hints_prefix = '🔍 ',
  --   --       },
  --   --     },
  --   --     server = {
  --   --       on_attach = function(client, bufnr)
  --   --         vim.keymap.set('n', 'K', require 'rust-tools.hover_actions', { buffer = bufnr })
  --   --         vim.keymap.set('n', '<leader>ca', require 'rust-tools.code_action_group', { buffer = bufnr })
  --   --       end,
  --   --     },
  --   --   }
  --   -- end,
  -- },
}
