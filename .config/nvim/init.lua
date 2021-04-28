--[[
██╗███╗   ██╗██╗████████╗
██║████╗  ██║██║╚══██╔══╝
██║██╔██╗ ██║██║   ██║
██║██║╚██╗██║██║   ██║
██║██║ ╚████║██║   ██║
╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝
                   _____         __  __
                  /\___/\       /\_\\  /\
                 / / _ \ \     ( ( (/ / /
                 \ \(_)/ /      \ \_ / /
                 / / _ \ \  _   / /  \ \
                ( (_( )_) )/_/\( (_(\ \ \
                 \/_/ \_\/ \_\/ \/_//__\/ ]]--

local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
		scopes[scope][key] = value
		if scope ~= 'o' then scopes['o'][key] = value end
end


-------------------- OPTIONS -------------------------------
opt('b', 'expandtab', true)                           -- Use spaces instead of tabs
opt('b', 'shiftwidth', 4)                             -- Size of an indent
opt('b', 'tabstop', 4)                                -- Number of spaces tabs count for
opt('b', 'smartindent', true)                         -- Insert indents automatically
opt('o', 'cindent', true)                             -- C style linenumber
opt('o', 'exrc', true)                                -- Enable execution of local rc
opt('o', 'mouse', 'a')                                -- Enable mouse in all modes
opt('o', 'swapfile', false)                           -- I hate swap file
opt('o', 'writebackup', false)                        -- I hate backup files and always this bites me
opt('o', 'completeopt', 'menuone,noinsert,noselect')  -- Completion options (for deoplete)
opt('o', 'hidden', true)                              -- Enable modified s in background
opt('o', 'ignorecase', true)                          -- Ignore case
opt('o', 'joinspaces', false)                         -- No double spaces with join after a dot
opt('o', 'scrolloff', 4 )                             -- Lines of context
opt('o', 'sidescrolloff', 8 )                         -- Columns of context
opt('o', 'cmdheight', 2 )                             -- Lines of context
opt('o', 'shiftround', true)                          -- Round indent
opt('o', 'smartcase', true)                           -- Don't ignore case with capitals
opt('o', 'splitbelow', true)                          -- Put new windows below current
opt('o', 'splitright', true)                          -- Put new windows right of current
opt('o', 'termguicolors', true)                       -- True color support
opt('o', 'hlsearch', false)                           -- I hate search highlight
opt('o', 'wildmode', 'list:longest')                  -- Command-line completion mode
opt('w', 'list', true)                                -- Show some invisible characters (tabs...)
opt('w', 'number', true)                              -- Print line number
opt('w', 'relativenumber', true)                      -- Relative line numbers
opt('w', 'wrap', false)                               -- Disable line wrap

-------------------- Sourcing other inits ------------------
require('paq')      -- Plugins
require('gline')    -- Statusbar
require('keymap')   -- Keymaps
require('myFunc')  -- My own functions
require('lsp')
require('lsp.clangd')
-- require('lsp.luals')
require('lsp.vimls')
require('lsp.bashls')
require('lsp.pythonls')
require('lspkind-cfg')
require('lightbulb-cfg')
require('compe-cfg')
require('sneak_cfg')
require('ultis-cfg')
require('qscope_cfg')
require('ranger_cfg')
require('tsitter_cfg')
require('startify_cfg')
require('cpp-enhanced')

-------------------- COMMANDS ------------------------------
-- cmd 'colorscheme space_vim_theme'    -- Color Scheme

-- Hilight when yanking
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}

-- configure nvcode-color-schemes
vim.cmd('let nvcode_termcolors=256')

--syntax on
cmd 'colorscheme nvcode'

-- checks if your terminal has 24-bit color support
-- if (has("termguicolors"))
    cmd 'set termguicolors'
    cmd 'hi LineNr ctermbg=NONE guibg=NONE'
-- endif

-- Colorizer Setup
require'colorizer'.setup()

-- GuiFont for neovide
vim.cmd ([[set guifont=FiraCode\ Nerd\ Font:h16]])
--vim.cmd("let neovide_fullscreen=v:true")
