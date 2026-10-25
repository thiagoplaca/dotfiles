return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_ls = {
          filetypes = {
            "html",
            "typescriptreact",
            "javascriptreact",
            "vue",
            "css",
            "sass",
            "scss",
            "less",
          },
        },
      },
    },
  },
}
