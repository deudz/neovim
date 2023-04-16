local status, ll = pcall(require, "lualine")
if not status then
  return
end

ll.setup()
