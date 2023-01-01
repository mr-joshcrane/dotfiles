vim.g.mapleader =  " "

local keymap = vim.keymap

-- unbind arrow keys :(
keymap.set("", "<Up>", "<Nop>")
keymap.set("", "<Down>", "<Nop>")
keymap.set("", "<Left>", "<Nop>")
keymap.set("", "<Right>", "<Nop>")

-- general keymaps

keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- split keymaps
keymap.set("n", "<leader>sh", "<C-w>v")
keymap.set("n", "<leader>sv", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- tabs keymaps
keymap.set("n", "<leader>tt", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>ty", ":tabn<CR>")
keymap.set("n", "<leader>tr", ":tabp<CR>")

-- nvimtree --
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope --
-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

