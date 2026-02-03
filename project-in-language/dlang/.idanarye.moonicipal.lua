local moonicipal = require'moonicipal'
local T = moonicipal.tasks_file()

local blunder = require'blunder'
local channelot = require("channelot")

function T:build()
    blunder.run{'dub', '-q', 'build', '--compiler=dmd'}
end

function T:run()
    blunder.run{'dub', '-q', 'run', '--compiler=dmd'}
end

function T:test()
    blunder.run{'dub', '-q', 'test', '--compiler=dmd'}
end

function T:debug()
    channelot.shadow_terminal():with(function(t)
        t:job{'dub', '-q', 'build', '--compiler=dmd'}:using(blunder.for_channelot()):check()
    end)
    require'dap'.run {
        name = 'Launch',
        type = 'codelldb',
        request = 'launch',
        program = 'app',
    }
end
