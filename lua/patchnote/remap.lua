vim.keymap.set("n", "<leader>ls", vim.cmd.Ex)

-- Prevents delete from overriding system clipboard
vim.keymap.set("n", "d", "\"\"d")
vim.keymap.set("n", "D", "\"\"D")
-- Prevents X/C from overwriting registers.  Straight to the void for you
vim.keymap.set("n", "c", "\"_c")
vim.keymap.set("n", "C", "\"_C")
vim.keymap.set("n", "x", "\"_x")
vim.keymap.set("n", "X", "\"_X")

-- Prevents yank from overriding system clipboard by default
vim.keymap.set("n", "y", "\"0y")
vim.keymap.set("n", "Y", "\"0Y")
-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Paste last yanked content
vim.keymap.set("n", "p", "\"0p")
vim.keymap.set("n", "P", "\"0P")
-- Paste from system clipboard
vim.keymap.set("n", "<leader><C-p>", "\"+p")
vim.keymap.set("n", "<leader><C-P>", "\"+P")

-- Moves selected visual block up or down, autoindenting
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- When appending line below, keep cursor in place instead of moving to EOL
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps cursor centered when jumping to next/previous found
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over current word while preserving clipboard
--vim.keymap.set("x", "<leader>v", "\"_dP")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix listTEST' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


-- Telescope File Browser
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>")
-- Uses Telescope to allow jumping to functions
vim.keymap.set("n", "<leader>lm", function() 
   require("telescope.builtin").lsp_document_symbols({symbols={"method","function"}}) 
end, opts)


-- Harpoon
local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>q", function() harpoon:list():add() end, { desc = "Add file to Harpoon list" })
vim.keymap.set("n", "<leader>r", function() harpoon:list():remove() end, { desc = "Remove file from Harpoon list" })
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle Harpoon quick menu" })

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Go to Harpoon 1" })
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Go to Harpoon 2" })
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Go to Harpoon 3" })
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Go to Harpoon 4" })
vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Go to Harpoon 5" })
vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end, { desc = "Go to Harpoon 6" })
vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end, { desc = "Go to Harpoon 7" })
vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end, { desc = "Go to Harpoon 8" })
vim.keymap.set("n", "<leader>9", function() harpoon:list():select(9) end, { desc = "Go to Harpoon 9" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>,", function() harpoon:list():prev() end, { desc = "Previous Harpoon list item" })
vim.keymap.set("n", "<leader>.", function() harpoon:list():next() end, { desc = "Next Harpoon list item" })
