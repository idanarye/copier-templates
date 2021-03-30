from omnipytent import *
from omnipytent.ext.idan import *


gradle = local['gradle']['-q']


@task
def build(ctx):
    gradle['build'] & ERUN.bang


@task
def run(ctx):
    gradle['run'] & BANG


@task
def test(ctx):
    gradle['test'] & BANG
