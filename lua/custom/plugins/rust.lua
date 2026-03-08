vim.g.rustaceanvim = {
  tools = {
    enable_clippy = true,
  },
  server = {
    default_settings = {
      ['rust-analyzer'] = {
        checkOnSave = true,
        check = {
          command = 'check',
          workspace = false,
          allTargets = false,
        },
        cargo = {
          allTargets = false,
        },
        procMacro = {
          enable = true,
        },
      },
    },
  },
}

return {
  {
    'saecki/crates.nvim',
    config = function()
      require('crates').setup {
        lsp = {
          enabled = true,
          hover = true,
          actions = true,
          completion = true,
        },
        --src = {
        --  cmp = {
        --    enabled = true,
        --  },
        --},
      }
    end,
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^8',
    lazy = false,
  },
}
