--[[

██████╗ ██╗     ██╗   ██╗ ██████╗      ██████╗ ██████╗ ███╗   ██╗███████╗
██╔══██╗██║     ██║   ██║██╔════╝     ██╔════╝██╔═══██╗████╗  ██║██╔════╝
██████╔╝██║     ██║   ██║██║  ███╗    ██║     ██║   ██║██╔██╗ ██║█████╗
██╔═══╝ ██║     ██║   ██║██║   ██║    ██║     ██║   ██║██║╚██╗██║██╔══╝
██║     ███████╗╚██████╔╝╚██████╔╝    ╚██████╗╚██████╔╝██║ ╚████║██║
╚═╝     ╚══════╝ ╚═════╝  ╚═════╝      ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝
                                                                      ArKi ]]--

-------------------------- Ranger File Manager -------------------------
vim.g.rnvimr_enable_ex = 1
vim.g.rnvimr_enable_bw = 1
vim.g.rnvimr_enable_picker = 1
vim.g.rnvimr_shadow_winblend = 70
vim.g.rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'
vim.g.rnvimr_draw_border = 0
vim.g.rnvimr_hide_gitignore = 1
vim.g.rnvimr_border_attr = "{'fg': 14, 'bg': -1}"
vim.api.nvim_exec ("highlight link RnvimrNormal CursorLine", true)

vim.cmd("let rnvimr_action = {'<C-t>': 'NvimEdit tabedit', '<C-x>': 'NvimEdit split', '<C-v>': 'NvimEdit vsplit', 'gw': 'JumpNvimCwd', 'yw': 'EmitRangerCwd'}")

-- Add views for Ranger to adapt the size of floating window
-- vim.cmd("let rnvimr_ranger_views = [{'minwidth': 90, 'ratio': []}, {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]}, {'maxwidth': 49, 'ratio': [1]}]")

-- Customize the initial layout
vim.cmd("let rnvimr_layout = {'relative': 'editor', 'width': float2nr(round(0.7 * &columns)), 'height': float2nr(round(0.7 * &lines)), 'col': float2nr(round(0.15 * &columns)), 'row': float2nr(round(0.15 * &lines)), 'style': 'minimal' }")

-- Customize multiple preset layouts
-- '{}' represents the initial layout
vim.cmd("let rnvimr_presets = [ {'width': 0.600, 'height': 0.600}, {}, {'width': 0.800, 'height': 0.800}, {'width': 0.950, 'height': 0.950}, {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0}, {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5}, {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0}, {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5}, {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0}, {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0}, {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0}, {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}]")
