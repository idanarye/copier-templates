local moonicipal = require'moonicipal'
local T = moonicipal.tasks_file()

local blunder = require'blunder'

function T:build()
    blunder.run{'gradle', 'build'}
end

function T:run()
    blunder.create_window_for_terminal()
    vim.fn.termopen{'gradle', 'run'}
end

function T:test()
    blunder.create_window_for_terminal()
    vim.fn.termopen{'gradle', 'test'}
end
