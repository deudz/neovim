require("nvim-treesitter.configs").setup({
  ensure_installed = { "cpp", "lua", "html", "typescript", "javascript", "css", "vimdoc" },

  highlight = { enable = true },
  indent = { enable = true }
})
