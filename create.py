#!/usr/bin/python3

import re
import os

from plumbum import local
from copier import run_copy

num_pattern = re.compile(r'^\d+$')

here = local.path('.')

def max_number():
    for path in here:
        try:
            num = int(path.basename)
        except ValueError:
            pass
        else:
            yield num
max_number = max(max_number(), default=0)

new_number = max_number + 1

template_name = here.basename
templates_repo = local.path(os.readlink(__file__)).parent / 'project-in-language'

run_copy(
    src_path=str(templates_repo / template_name),
    dst_path=str(new_number),
    unsafe=True,
)
print(new_number)
