vim.keymap.set('n', '<leader>,t', function()
  require('neotest').run.run(vim.fn.expand '%')
end)
return {}
