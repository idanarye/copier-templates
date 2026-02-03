local moonicipal = require'moonicipal'
---@diagnostic disable-next-line: unused-local
local T = moonicipal.tasks_file()

local channelot = require'channelot'

---@diagnostic disable-next-line: unused-local
local P, cfg = moonicipal.import(require'idan.project.python.with_uv')

function T:link_easypy()
    channelot.windowed_terminal_job{'ln', '--verbose', '--symbolic', '/files/code/wekapp/easypy/', 'src/'}
end
