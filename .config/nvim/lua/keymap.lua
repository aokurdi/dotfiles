--[[    ██╗  ██╗███████╗██╗   ██╗███╗   ███╗ █████╗ ██████╗
        ██║ ██╔╝██╔════╝╚██╗ ██╔╝████╗ ████║██╔══██╗██╔══██╗
        █████╔╝ █████╗   ╚████╔╝ ██╔████╔██║███████║██████╔╝
        ██╔═██╗ ██╔══╝    ╚██╔╝  ██║╚██╔╝██║██╔══██║██╔═══╝
        ██║  ██╗███████╗   ██║   ██║ ╚═╝ ██║██║  ██║██║
        ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝
                                                ▄▖  ▖▖     ▌▘
                                                ▌▌  ▙▘▌▌▛▘▛▌▌
                                                ▛▌▗ ▌▌▙▌▌ ▙▌▌]]--

local g = vim.g
local function map(mode, lhs, rhs, opts)
		local options = {noremap = true}
		if opts then options = vim.tbl_extend('force', options, opts) end
		vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-------------------- MAPPINGS ------------------------------
vim.g.mapleader = ' '    -- Map leader to space

map('i', 'jj', '<esc>')  -- Make jj = esc
map('', '<leader>y', '"+y')       -- Copy to clipboard in normal, visual, select and operator modes
map('', '<leader>yy', '"+yy')     -- Copy to clipboard in normal, visual, select and operator modes
map('', '<leader>Y', '"+yg_')     -- Copy to clipboard in normal, visual, select and operator modes
map('', '<leader>p', '"+p')       -- Paste from clipboard in normal, visual, select and operator modes
map('', '<leader>P', '"+P')       -- Paste from clipboard in normal, visual, select and operator modes

map('i', '<C-u>', '<C-g>u<C-u>')  -- Make <C-u> undo-friendly
map('i', '<C-w>', '<C-g>u<C-w>')  -- Make <C-w> undo-friendly

-- <Tab> to navigate the completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

map('n', '<Leader><Leader>h', ':silent bn<CR>', {silent = true})    -- Move to next buffer
map('n', '<Leader><Leader>l', ':silent bp<CR>', {silent = true})    -- Move to previous buffer
map('n', '<Leader><Leader>d', ':silent bd<CR>', {silent = true})    -- Delete buffer

map('n', '<Leader>w', ':silent w<CR>', {silent = true})    -- Quick silent write
map('n', '<Leader>\\', ':luafile %<CR>')                   -- Source current file

map('v', 'J', ":m '>+1<CR>gv=gv")    -- Move selected line down
map('v', 'K', ":m '<-2<CR>gv=gv")    -- Move selected line up

map('n', '<leader>j', ':wincmd j<CR>', {silent = true})    -- Move to split below
map('n', '<leader>h', ':wincmd h<CR>', {silent = true})    -- Move to left split
map('n', '<leader>k', ':wincmd k<CR>', {silent = true})    -- Move to split above
map('n', '<leader>l', ':wincmd l<CR>', {silent = true})    -- Move to right split

map('', '<C-t><up>',    ':tabr<CR>', {silent = true})    -- Switch tabs
map('', '<C-t><down>',  ':tabl<CR>', {silent = true})    -- Switch tabs
map('', '<C-t><left>',  ':tabp<CR>', {silent = true})    -- Switch tabs
map('', '<C-t><right>', ':tabn<CR>', {silent = true})    -- Switch tabs

map('n', '<leader>+', ':vertical resize +5 <CR>')    -- Resize vertical window
map('n', '<leader>-', ':vertical resize -5 <CR>')    -- Resize vertical window

map('n', '<leader>/', ':Commentary <CR>')    -- Comment a line
map('v', '<leader>/', ':Commentary <CR>')    -- Comment a line

-- FileRanger
map('n', '<leader>r', ':RnvimrToggle<CR>', {silent = true})        -- Toggle Ranger
map('t', '<M-o>', [[<C-\><C-n>:RnvimrToggle<CR>]], {silent = true})  -- Toggle Ranger
map('t', '<M-y>', [[<C-\><C-n>:RnvimrResize 6<CR>]], {silent = true})
map('t', '<M-i>', [[<C-\><C-n>:RnvimrResize<CR>]], {silent = true})  -- Resize Ranger
map('t', '<M-l>', [[<C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>]], {silent = true}) -- Resize Special preset layout

-- Telescope bindings
map ('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")
map ('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
map ('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>")
map ('n', '<leader>dh', "<cmd>lua require('telescope.builtin').help_tags()<cr>")

map('n', '<C-l>', '<cmd>noh<CR>')    -- Clear highlights
map('n', '<leader>o', 'm`o<Esc>``')  -- Insert a newline in normal mode

-- Sneak
map('', 'gs', '<Plug>Sneak_;', {})
map('', 'gS', '<Plug>Sneak_,', {})

-- Map sudo write
vim.api.nvim_set_keymap('c', 'fw', [[w !sudo tee % >/dev/null]] , {noremap = true})
-----------------------------------  Map Floaterm toggen to F3  -----------------------------------
g['floaterm_keymap_toggle'] = '<F3>'
