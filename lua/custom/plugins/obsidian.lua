return {
  {
    'epwalsh/obsidian.nvim',
    lazy = true,
    ft = 'markdown',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opts = {
      workspaces = {
        {
          name = 'personal',
          path = '~/vaults/personal_vault',
        },
      },
    },
  },
}
