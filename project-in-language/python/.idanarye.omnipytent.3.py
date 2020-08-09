from omnipytent import *
from omnipytent.ext.idan import *


@task
def run(ctx):
    local['./main.py'] & BANG

@task
def debug(ctx):
    CMD.VBGstartPDB3('main.py')


@task
def explore(ctx):
    local['ipython3']['-i', './main.py'] & TERMINAL_TAB


@task
def symlink_easypy(ctx):
    local['ln']['-s', local.path('/files/code/easypy/easypy/'), '.'] & BANG


@task
def shallow_clone_easypy(ctx):
    local['git']['clone', '--depth=1', 'git@github.com:weka-io/easypy.git'] & TERMINAL_PANEL
