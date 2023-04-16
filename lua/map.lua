local function map(mode, lhs, rhs)
  options = vim.tbl_extend("force", { noremap = true }, { silent = true })
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<Leader>ff", "<CMD>Telescope find_files<CR>")
