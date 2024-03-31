-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ray-x/navigator.lua',
    dependencies = { 'ray-x/guihua.lua' },
    build = { 'cd lua/fzy && make' },
    config = function()
      require('navigator').setup {
        mason = true,
        --lsp = {
        --  servers = { 'csharp-language-server' },
        --},
      }
    end,
  },
  'sharkdp/fd',
  'BurntSushi/ripgrep',
  'github/copilot.vim',
  'nvim-tree/nvim-web-devicons',
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup {
        filters = {
          dotfiles = true,
        },
      }
      vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<cr>')
    end,
  },
  -- {
  --   'mrcjkb/rustaceanvim',
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
  --  {
  --    'iabdelkareem/csharp.nvim',
  --    dependencies = { 'Tastyep/structlog.nvim', 'williamboman/mason.nvim' },
  --    config = function()
  --      require('csharp').setup {
  --        lsp = {
  --          cmd = { 'omnisharp', '--languageserver' },
  --          filetypes = { 'csharp' },
  --        },
  --      }
  --    end,
  --  },
  {
    'gen740/SmoothCursor.nvim',
    config = function()
      require('smoothcursor').setup {
        fancy = {
          enable = true,
          head = {},
          body = {
            { cursor = '󰝥', texthl = 'SmoothCursorRed' },
            { cursor = '󰝥', texthl = 'SmoothCursorOrange' },
            { cursor = '●', texthl = 'SmoothCursorYellow' },
            { cursor = '●', texthl = 'SmoothCursorGreen' },
            { cursor = '•', texthl = 'SmoothCursorAqua' },
            { cursor = '.', texthl = 'SmoothCursorBlue' },
            { cursor = '.', texthl = 'SmoothCursorPurple' },
          },
          tail = {},
        },
      }
    end,
  },
  { 'windwp/nvim-autopairs', event = 'InsertEnter', config = true },
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup {
        shell = 'pwsh.exe',
        open_mapping = [[<C-\>]],
      }
      local opts = { buffer = 0 }
      local Terminal = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new {
        cmd = 'lazygit',
        dir = 'git_dir',
        direction = 'horizontal',
        float_opts = {
          border = 'double',
        },
        hidden = true,
        display_name = 'LazyGit',
        -- function to run on opening the terminal
        on_open = function(term)
          vim.cmd 'startinsert!'
          vim.api.nvim_buf_set_keymap(term.bufnr, 'n', 'q', '<cmd>close<CR>', { noremap = true, silent = true })
        end,
        -- function to run on closing the terminal
        on_close = function(_)
          vim.cmd 'startinsert!'
        end,
        close_on_exit = true,
      }

      function _lazygit_toggle()
        if not lazygit:is_open() then
          lazygit:open()
        else
          lazygit:focus()
          lazygit:set_mode 'i'
        end
      end

      vim.keymap.set('n', '<leader>tth', '<cmd>ToggleTerm direction=horizontal<cr>', {
        desc = 'Open [h]orizontal [T]erminal',
      })
      vim.keymap.set('n', '<leader>ttv', '<cmd>ToggleTerm direction=vertical<cr>', {
        desc = 'Open [v]ertical [T]erminal',
      })
      vim.keymap.set('n', '<leader>ttf', '<cmd>ToggleTerm direction=float<cr>', {
        desc = 'Open [f]oat [T]erminal',
      })
      vim.keymap.set('n', '<leader>ts', '<cmd>TermSelect<cr>')
      vim.keymap.set('n', '<leader>tg', '<cmd>lua _lazygit_toggle()<cr>', {
        desc = 'Toggle Lazy[G]it',
      })
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    end,
  },
  { 'rmagatti/auto-session', config = true },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('flutter-tools').setup {
        fvm = true,
        debugger = {
          enabled = true,
          run_via_dap = true,
          register_configurations = function(paths)
            local file = io.open('.vscode/launch.json', 'r')
            if file ~= nil then
              io.close(file)
              require('dap.ext.vscode').load_launchjs()
            end
          end,
        },
      }
      require('telescope').load_extension 'flutter'
    end,
  },
  {
    'sindrets/diffview.nvim',
  },
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
}
