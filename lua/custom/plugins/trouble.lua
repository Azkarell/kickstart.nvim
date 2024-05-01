return {
  {
    'folke/trouble.nvim',
    branch = 'dev',
    opts = {
      modes = {
        work = {
          mode = 'diagnostics', -- inherit from diagnostics mode
          filter = {
            any = {
              buf = 0, -- current buffer
              {
                severity = vim.diagnostic.severity.ERROR, -- errors only
                -- limit to files in the current project
                function(item)
                  return item.filename:find(vim.loop.cwd(), 1, true)
                end,
              },
            },
          },
        },
      },
    },
    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble work toggle<cr>',
        desc = 'Workspace diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
      {
        '<leader>xe',
        '<cmd>Trouble diagnostics toggle filter.severity=vim.diagnostic.severity.ERROR<cr>',
        desc = 'Diagonstics Error',
      },
      {
        '<leader>xf',
        function()
          vim.diagnostic.open_float {
            scope = 'line',
          }
        end,
        desc = 'Show floating Diagnostics',
      },
      {
        '<leader>xt',
        '<cmd>TodoTrouble<cr>',
        desc = 'Todo',
      },
    },
  },
}
