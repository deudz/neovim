require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "lua", "html", "typescript", "javascript", "css" },

  highlight = { enable = true },
  indent = { enable = true }
})
