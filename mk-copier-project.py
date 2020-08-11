#!/usr/bin/python3

import os

from plumbum import local, FG
from copier import copy


templates_repo = local.path(os.readlink(__file__)).parent / 'project-in-language'
options = [p.basename for p in templates_repo if p.isdir()]

choice = (local['fzf'] << '\n'.join(
    p.basename
    for p in templates_repo
    if p.isdir()
))(stderr=None).strip()

new_repo_name = input('Enter name for new repository: ')

copy(
    src_path=str(templates_repo / choice),
    dst_path=new_repo_name,
)
