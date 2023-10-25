local moonicipal = require'moonicipal'
local T = moonicipal.tasks_file()

local blunder = require'blunder'

function T:run()
    blunder.create_window_for_terminal()
    vim.fn.termopen{'luajit', 'main.lua'}
end
