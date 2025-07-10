local moonicipal = require'moonicipal'
---@diagnostic disable-next-line: unused-local
local T = moonicipal.tasks_file()

local blunder = require'blunder'

---@diagnostic disable-next-line: unused-local
local P, cfg = moonicipal.import(require'idan.project.python.with_uv')

function T:run()
    blunder.run{'uv', '-q', 'run', 'pytest', '-vs', 'tests/'}
end
