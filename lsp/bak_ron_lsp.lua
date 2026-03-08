local util = require 'lspconfig.util'
return {
  cmd = { vim.fn.expand 'ron-lsp' },
  filetypes = { 'ron' },
  root_dir = function(bufnr, on_dir)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    on_dir(util.root_pattern('Cargo.toml', '.git')(fname))
  end,
  settings = {},
}
