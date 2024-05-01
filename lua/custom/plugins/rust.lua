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
    version = '^4',
    ft = { 'rust' },
  },
}
