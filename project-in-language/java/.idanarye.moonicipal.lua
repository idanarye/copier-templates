local moonicipal = require'moonicipal'
local T = moonicipal.tasks_file()

local blunder = require'blunder'
local channelot = require'channelot'

function T:build()
    blunder.run{'gradle', 'build'}
end

function T:run()
    channelot.windowed_terminal_job{'gradle', 'run'}
end

function T:test()
    channelot.windowed_terminal_job{'gradle', 'test'}
end
