import vim
from omnipytent import *
from omnipytent.ext.idan import *


@task
def compile(ctx):
    cargo['-q', 'build'] & ERUN.bang


@task
def run(ctx):
    cargo['-q', 'test'] & BANG


@task
def test(ctx):
    cargo['-q', 'test', '--', '-Z', 'unstable-options', '--include-ignored'] & BANG
