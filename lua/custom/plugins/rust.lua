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
          workspace = true,
          allTargets = true,
        },
        cargo = {
          targetDir = true,
          allTargets = false,
        },
        procMacro = {
          enable = true,
        },
        completion = {
          fullFunctionSignatures = {
            enable = true,
          },
        },
        gotoImplementations = {
          filterAdjacentDervies = true,
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
