local status, nt = pcall(require, "nvim-tree")
if not status then
  return
end

nt.setup()
