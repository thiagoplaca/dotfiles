return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            -- Isso faz o <leader>ff mostrar arquivos ocultos e do .gitignore
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}
