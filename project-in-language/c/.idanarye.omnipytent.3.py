from omnipytent import *
from omnipytent.ext.idan import *


EXECUTABLE = local.path('./a.out')


@task
def build(ctx):
    local['gcc']['-g'][local.path('.').glob('*.c')] & ERUN.bang


@task
def run(ctx):
    local[EXECUTABLE] & SH


@task
def debug(ctx):
    CMD.VBGstartGDB(EXECUTABLE)
