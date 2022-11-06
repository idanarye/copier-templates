import vim
from omnipytent import *
from omnipytent.ext.idan import *


@task
def run(ctx):
    local['luajit']['main.lua'] & BANG


@task
def explore(ctx):
    local['resty-repl']['main.lua'] & TERMINAL_PANEL
