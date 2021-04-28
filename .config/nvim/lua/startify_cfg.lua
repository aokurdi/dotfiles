--[[

██████╗ ██╗     ██╗   ██╗ ██████╗      ██████╗ ██████╗ ███╗   ██╗███████╗
██╔══██╗██║     ██║   ██║██╔════╝     ██╔════╝██╔═══██╗████╗  ██║██╔════╝
██████╔╝██║     ██║   ██║██║  ███╗    ██║     ██║   ██║██╔██╗ ██║█████╗
██╔═══╝ ██║     ██║   ██║██║   ██║    ██║     ██║   ██║██║╚██╗██║██╔══╝
██║     ███████╗╚██████╔╝╚██████╔╝    ╚██████╗╚██████╔╝██║ ╚████║██║
╚═╝     ╚══════╝ ╚═════╝  ╚═════╝      ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝
                                                                      ArKi ]]--

--------------------- Startify Settings --------------------
vim.g.startify_custom_header = "startify#pad(split(system('figlet -fCaligraphy2 Kurdi'), '\n'))"
vim.g.startify_enable_special = 0
vim.g.webdevicons_enable_startify = 1
vim.g.startify_session_autoload = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1
vim.g.startify_change_to_dir = 1

vim.cmd(
    "let startify_lists = [ {'type': 'files', 'header': ['  Files']}, {'type': 'sessions', 'header': ['  Sessions']}, {'type': 'bookmarks', 'header': ['  Bookmarks'] },]")

vim.cmd(
    "let startify_bookmarks = [ { 'i': '~/.config/nvim/init.vim' }, { 'z': '~/.zshrc' }, { 't': '~/.config/kitty/kitty.conf' }, {'p': '~/projects'} ]")

vim.cmd([[
function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
]])

