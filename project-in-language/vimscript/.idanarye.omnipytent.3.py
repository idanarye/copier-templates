from omnipytent import *
from omnipytent.ext.idan import *


@task
def run(ctx):
    CMD.source('./main.vim')
