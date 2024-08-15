
local current = 1;

function ToggleColorscheme()
	local liked = { "eva01", "gruvbox", "onedark", "ayu", "catppuccin-latte" }

	if current > #liked then
		current = 1;
	end

	print(liked[current])

	vim.cmd('colorscheme ' .. liked[current])
	current = current + 1;
end


function ToggleDarkMode()
	-- toggle dark mode or light mode
	if vim.o.background == "dark" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
end

