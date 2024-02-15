vim.g.mapleader = " ";
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");

vim.keymap.set("n", "J", "mzJ`z");
vim.keymap.set("n", "<C-d", "<C-d>zz");
vim.keymap.set("n", "C-u", "<C-u>zz");

vim.keymap.set("x", "<leader>p", "\"_DP");

vim.keymap.set("v", "<leader>y", "\"+y");
vim.keymap.set("v", "<leader>Y", "\"+Y");

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]);
vim.keymap.set("n", "<leader>0", ":nohlsearch<CR>");

vim.keymap.set("i", "{<CR>", "{<CR>}<C-o>O");
vim.keymap.set("i", "[<CR>", "[<CR>]<C-o>O<Tab>");
vim.keymap.set("n", "<leader><leader>", "i<Space><Esc>");

-- save file
vim.keymap.set("n", "<leader>w", ":w<CR>");

-- check for mapping in certain keycomb
vim.keymap.set("n", "<leader>m", ":imap ");

vim.keymap.set("n", "<S-p>", ":tabnext<CR>");

-- moving between buffers FAST
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>");
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>");
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>");
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>");

-- open a TERMINAL on the left side with a width of 70
vim.keymap.set("n", "<leader>nk", ":new<CR>:terminal<CR>i");
vim.keymap.set("n", "<leader>vk", ":vnew<CR>:terminal<CR>i");

-- split the window
vim.keymap.set("n", "<leader>sp", ":split_f<CR>")
-- create new window
vim.keymap.set("n", "<leader>n", ":new<CR>")
-- create new window vertically
vim.keymap.set("n", "<leader>vn", ":vnew<CR>")

-- change buffer size quickly
vim.keymap.set("n", "<leader>-", ":wincmd 8 <<CR>");
vim.keymap.set("n", "<leader>=", ":wincmd 8 ><CR>");
vim.keymap.set("n", "<leader>_", ":wincmd 8 -<CR>");
vim.keymap.set("n", "<leader>+", ":wincmd 8 +<CR>");

-- Keymap to Open File Tree
vim.keymap.set("n", "<Tab>", ":NvimTreeToggle<CR>");

-- Keymaps to wrap stuff
vim.keymap.set("v", "<leader>\"", "A\"<Esc>`<i\"<Esc>lel");
vim.keymap.set("v", "<leader>{", "A}<Esc>`<i{<Esc>lel");
vim.keymap.set("v", "<leader>[", "A]<Esc>`<i[<Esc>lel");
vim.keymap.set("v", "<leader>(", "A)<Esc>`<i(<Esc>lel");
vim.keymap.set("v", "<leader>'", "A'<Esc>`<i'<Esc>lel");

vim.keymap.set("n", "<leader>c", ":lua copilot_toggle()<CR>");
function _G.copilot_toggle()
	if vim.g.copilot_enabled ~= 0 then
		vim.g.copilot_enabled = 0
		vim.cmd("echo 'Copilot disabled'")
	else
		vim.g.copilot_enabled = 1
		vim.cmd("echo 'Copilot enabled'")
	end
end

-- Keymap to open terminal and execute cargo run
vim.keymap.set("n", "<leader>mw", function()
	-- TODO
end)

vim.keymap.set("n", "<leader>q", ":q<CR>");
