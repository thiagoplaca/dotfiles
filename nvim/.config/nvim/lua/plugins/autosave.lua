return {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      -- Habilita o auto-save automaticamente ao iniciar o Neovim
      enabled = true,

      -- Eventos que disparam o salvamento (BufLeave é quando você sai do buffer)
      events = { "InsertLeave", "TextChanged", "BufLeave" },

      -- Configuração do Delay (similar ao VS Code)
      debounce_delay = 2000, -- Salva 2000ms (2 segundos) após a última tecla

      -- O que salvar
      callbacks = {
        file_types = { "css", "c", "lua", "python", "javascript", "html", "conf", "sh" },

        -- Ignorar FileTypes específicos (como commit messages)
        server_disable_file_type = { "gitcommit" },
      },
    })

    -- (Opcional) Mapeamento de tecla para ligar/desligar o auto-save
    vim.keymap.set("n", "<leader>as", function()
      require("auto-save").toggle()
    end, { desc = "Toggle Auto Save" })
  end,
}
