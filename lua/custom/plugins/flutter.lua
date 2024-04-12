return {
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
          register_configurations = function(_)
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
}
