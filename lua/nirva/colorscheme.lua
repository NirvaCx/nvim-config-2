-- set colorscheme
if vim.env.TERM == 'linux' then
    vim.o.termguicolors = false
    -- font for tty
    vim.cmd("colorscheme vim")
else
    vim.o.termguicolors = true
    vim.cmd("colorscheme habamax")
end
