return {
  'jmederosalvarado/roslyn.nvim',
  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

    require('roslyn').setup {
      on_attach = function() end,
      capabilities = capabilities,
    }
  end,
}
