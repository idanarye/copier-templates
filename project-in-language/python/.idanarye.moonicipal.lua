local moonicipal = require'moonicipal'
local T = moonicipal.tasks_file()

local blunder = require'blunder'

function T:run()
    blunder.run{'python', './main.py'}
end

function T:debug()
    require'dap'.run {
        type = 'python',
        request = 'launch',
        program = 'main.py',
    }
end

function T:explore()
    vim.cmd[[
    tabnew
    terminal ipython3 -i ./main.py
    startinsert
    ]]
end

function T:symlink_easypy()
    vim.cmd[[!ln -s /files/code/wekapp/deps/easypy/easypy/ .]]
end
