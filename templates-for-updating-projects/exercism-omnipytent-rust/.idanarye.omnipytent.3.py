import vim
from omnipytent import *
from omnipytent.ext.idan import *


@task
def check(ctx):
    cargo['-q', 'check'] & ERUN.bang


@task
def build(ctx):
    cargo['-q', 'build'] & ERUN.bang


@task
def run(ctx):
    cargo['-q', 'test'] & BANG


@task
def test(ctx):
    cargo['-q', 'test', '--', '-Z', 'unstable-options', '--include-ignored'] & BANG
