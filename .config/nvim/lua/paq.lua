--[[
 @@@@@@@  @@@      @@@  @@@  @@@@@@@  @@@ @@@  @@@  @@@@@@
 @@!  @@@ @@!      @@!  @@@ !@@       @@! @@!@!@@@ !@@
 @!@@!@!  @!!      @!@  !@! !@! @!@!@ !!@ @!@@!!@!  !@@!!
 !!:      !!:      !!:  !!! :!!   !!: !!: !!:  !!!     !:!
  :       : ::.: :  :.:: :   :: :: :  :   ::    :  ::.: :

                                                ▖▖▖▖▄▖▄ ▄▖
                                                ▙▘▌▌▙▘▌▌▐
                                                ▌▌▙▌▌▌▙▘▟▖
]]--
local cmd = vim.cmd
local fn  = vim.fn

------------------------------- PLUGINS -------------------------------
cmd 'packadd paq-nvim'                  -- load the package manager
local paq = require('paq-nvim').paq     -- a convenient alias

paq {'savq/paq-nvim', opt = true}       -- paq-nvim manages itself
paq {'nvim-treesitter/nvim-treesitter'} -- Languauge grammer
paq {'neovim/nvim-lspconfig'}           -- Language Server
paq {'hrsh7th/nvim-compe'}              -- Completion
paq {'rhysd/vim-clang-format'}          -- C/CPP formating
paq {'bfrg/vim-cpp-modern'}             -- C/CPP syntax highlighting
paq {'glepnir/lspsaga.nvim'}            --
paq {'onsails/lspkind-nvim'}            -- Icons on complition menu
paq {'kosayoda/nvim-lightbulb'}         -- It is a light bulb
paq {'tpope/vim-surround'}              -- Quick surround insert/change
paq {'tpope/vim-commentary'}            -- Quick Comment a line
paq {'Yggdroot/indentLine'}             -- Show vertical indenting lines
paq {'voldikss/vim-floaterm'}           -- Ilove this terminal
paq {'kevinhwang91/rnvimr'}             -- File ranger
paq {'junegunn/fzf.vim'}                -- Fuzzy find
paq {'ojroques/nvim-lspfuzzy'}          -- Fuzzy find for language server
paq {'kyazdani42/nvim-web-devicons'}    -- Icons
paq {'ryanoasis/vim-devicons'}
paq {'mhinz/vim-startify'}              -- Startup menu
-- paq {'WolfgangMehner/c-support'}        -- C/CPP macros

-- git
paq {'mhinz/vim-signify'}              -- Startup menu

paq {'SirVer/ultisnips'}
paq {'honza/vim-snippets'}

-- Theming
paq {'glepnir/galaxyline.nvim'}         -- Status Line and Bufferline
paq {'romgrk/barbar.nvim'}              -- Top bar
paq {'liuchengxu/space-vim-theme'}     -- spacemacs color scheme
paq {'christianchiarulli/nvcode-color-schemes.vim'}
paq {'norcalli/nvim-colorizer.lua'}
-- Telescope
paq {'nvim-lua/popup.nvim'}
paq {'nvim-lua/plenary.nvim'}
paq {'nvim-telescope/telescope.nvim'}
paq {'nvim-telescope/telescope-media-files.nvim'}

-- Motion
paq {'unblevable/quick-scope'}
paq {'justinmk/vim-sneak'}
paq {'matze/vim-move'}

-- Mrkdown md
paq {'godlygeek/tabular'}
paq {'plasticboy/vim-markdown'}
paq {'iamcco/markdown-preview.nvim'}
