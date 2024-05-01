return {
  {
    'https://gitlab.com/schrieveslaach/sonarlint.nvim',
    dependencies = { 'neovim/nvim-lspconfig', 'mfussenegger/nvim-jdtls' },
    config = function()
      require('sonarlint').setup {
        server = {
          cmd = {
            vim.fn.expand '$MASON/bin/sonarlint-language-server.cmd',
            '-stdio',
            '-analyzers',
            vim.fn.expand '$MASON/share/sonarlint-analyzers/sonarpython.jar',
            vim.fn.expand '$MASON/share/sonarlint-analyzers/sonarcfamily.jar',
            vim.fn.expand '$MASON/share/sonarlint-analyzers/sonarjava.jar',
            vim.fn.expand '$MASON/share/sonarlint-analyzers/sonarlintomnisharp.jar',
            vim.fn.expand '$MASON/share/sonarlint-analyzers/sonargo.jar',
          },
        },
        filetypes = {
          'python',
          'cs',
          'java',
          'go',
        },
      }
      print 'sonarlint configured'
    end,
  },
}
