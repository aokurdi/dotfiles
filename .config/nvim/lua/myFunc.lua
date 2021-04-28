--[[
    __  ___         ______                 __  _
   /  |/  /_  __   / ____/_  ______  _____/ /_(_)___  _____
  / /|_/ / / / /  / /_  / / / / __ \/ ___/ __/ / __ \/ ___/
 / /  / / /_/ /  / __/ / /_/ / / / / /__/ /_/ / / / (__  )
/_/  /_/\__, /  /_/    \__,_/_/ /_/\___/\__/_/_/ /_/____/
       /____/
                                                                      ArKi ]]--

-- Remove whitespace upon exit
function TrimWS( )
    local save = vim.fn.winsaveview()
    vim.cmd('keeppatterns')
    vim.cmd([[%s/\s\+$//e]])
    vim.call('winrestview', save)
end
--  Auto Trim White Spase on Write
vim.api.nvim_command('autocmd BufWritePre * :lua TrimWS()')

--[[ Insert Conf Header from Template ]]--
function ConfHeader()
    vim.cmd('0read ~/.config/nvim/templates/config_header.txt')
end

--[[ Insert Conf Header from Template ]]--
function Chelp(tName)
    -- local templateName
    -- templateName = vim.fn.input('Enter your name:')
    vim.cmd('silent 0read ~/.config/nvim/templates/'..tName)
end

function ClearRegs()
    local regs = vim.fn.split([[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"]], [[\zs]])
    for i,v in ipairs(regs) do
        vim.fn.setreg(v, '')
    end
end
