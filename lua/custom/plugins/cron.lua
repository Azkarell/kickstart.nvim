return {
  {
    'fabridamicelli/cronex.nvim',
    opts = {
      explainer = {
        cmd = { 'pwsh', '--Command', 'cronstrue' },
      },
      format = function(explanation)
        local i, j = string.find(explanation, 'H')
        if j then
          local k, m = string.find(explanation, '0', j, true)
          return string.sub(explanation, j + 1, k - 3)
        end
        return explanation
      end,
    },
  },
}
