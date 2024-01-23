local colors = {
  "RainbowDelimiterRed",
  "RainbowDelimiterOrange",
  "RainbowDelimiterYellow",
  "RainbowDelimiterGreen",
  "RainbowDelimiterCyan",
  "RainbowDelimiterBlue",
  "RainbowDelimiterViolet",
}

local hooks = require 'ibl.hooks'

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowDelimiterRed",    { fg = "#cc6666" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#de935f" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#f0c674" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterGreen",  { fg = "#b5bd68" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterCyan",   { fg = "#8abeb7" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterBlue",   { fg = "#81a2be" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#b294bb" })
end)

require('ibl').setup {
  scope = { enabled = true },
  indent = { highlight = colors, smart_indent_cap = true },
  exclude = { filetypes = {'mason', 'lspinfo', 'help', 'terminal', ''} },
}
