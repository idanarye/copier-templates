import vim
from omnipytent import *
from omnipytent.ext.idan import *


@task
def run(ctx):
    local['lua']['main.lua'] & BANG


@task
def explore(ctx):
    local['lua']['-i', 'main.lua'] & TERMINAL_PANEL
