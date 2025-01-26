local keymap = vim.keymap.set
-- Basic keymaps
keymap("n", "<leader>e", vim.cmd.Ex, { desc = "Open file explorer" })
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move text down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move text up" })
keymap("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })
keymap("n", "<C-d>", "<C-d>zz", { desc = "Half page down and center" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Half page up and center" })

