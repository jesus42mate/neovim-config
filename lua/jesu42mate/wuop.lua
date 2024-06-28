vim.g.thing_buffer = '~/.papers/thing.txt'

function ExpandNotes()
	print(vim.fn.expand(vim.g.thing_buffer))
end

vim.keymap.set("n", "<leader>nt", ":e ")

