local function nmap(map, cmd)
    vim.keymap.set('n', map, cmd, { silent = true, remap = true })
end

nmap("<esc>", "<cmd>noh<cr>")

-- files
nmap("<leader>ff", "<cmd>Telescope find_files<cr>")
nmap("<leader>ft", "<cmd>NvimTreeToggle<cr>")

-- buffers
nmap("<leader>bb", "<cmd>Telescope buffers<cr>")
nmap("<leader>bn", "<cmd>bn<cr>")
nmap("<leader>bp", "<cmd>bp<cr>")
nmap("<leader>bd", "<cmd>bd<cr>")

-- windows
nmap("<leader>ww", "<cmd>wincmd w<cr>")
nmap("<leader>wo", "<cmd>wincmd o<cr>")
nmap("<leader>wq", "<cmd>wincmd q<cr>")
nmap("<leader>wh", "<cmd>wincmd h<cr>")
nmap("<leader>wj", "<cmd>wincmd j<cr>")
nmap("<leader>wk", "<cmd>wincmd k<cr>")
nmap("<leader>wl", "<cmd>wincmd l<cr>")
nmap("<leader>ws", "<cmd>split<cr>")
nmap("<leader>wv", "<cmd>vsplit<cr>")
nmap("<leader>w+", "<cmd>resize +1<cr>")
nmap("<leader>w-", "<cmd>resize -1<cr>")
nmap("<leader>w=", "<cmd>vert wincmd =<cr><cmd>hor wincmd =<cr>")
nmap("<leader>w<", "<cmd>vert resize -1<cr>")
nmap("<leader>w>", "<cmd>vert resize +1<cr>")
