
local current = 1;

function ToggleColorscheme()
	local liked = { "gruvbox", "iceberg", "onedark", "ayu" }

	if current > #liked then
		current = 1;
	end

	print(liked[current])

	vim.cmd('colorscheme ' .. liked[current])
	current = current + 1;
end
