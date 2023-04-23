local moonicipal = require'moonicipal'
local T = moonicipal.tasks_file()

function T:run()
    vim.cmd'!py.test -qs tests/'
end

function T:symlink_easypy()
    vim.cmd[[!ln -s /files/code/wekapp/deps/easypy/easypy/ .]]
end
