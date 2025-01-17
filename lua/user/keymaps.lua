local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<S-Up>", ":resize -2<CR>", opts)
keymap("n", "<S-Down>", ":resize +2<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "0", ":bnext<CR>", opts)
keymap("n", "9", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<C-w>", ":m .-2<CR>==", opts)
keymap("n", "<C-s>", ":m .+1<CR>==", opts)

-- Indent
--  <<
--  >>
--  == Fit surrounding

-- Saving and quit
keymap("n", "<leader>q", ":wq<CR>", opts)
keymap("n", "<leader>Q", ":q!", opts)

keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>W", ":wa<CR>", opts)

keymap("n", "<leader>x", ":xa<CR>", opts)
keymap("n", "<leader>X", ":qa!", opts)

-- Telescope
keymap("n", "<leader>fg", ":Telescope live_grep", opts)


-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Move text up and down
keymap("i", "<C-w>", "<Esc>:m .-2<CR>==gi", opts)
keymap("i", "<C-s>", "<Esc>:m .+1<CR>==gi", opts)

-- <C-p> for autopairs

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<C-w>", ":m '<-2<CR>==gv", opts)
keymap("v", "<C-s>", ":m '>+1<CR>==gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

