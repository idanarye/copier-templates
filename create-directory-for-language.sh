#!/bin/bash

set -e

ORIG_FILE=$(readlink $0)
COPIER_DIR=$(dirname $ORIG_FILE)
chosen=$(for lang in $(ls $COPIER_DIR/project-in-language); do
    if [ ! -d $lang ]; then
        echo $lang
    fi
done | fzf)

mkdir $chosen
ln -s $COPIER_DIR/create.py $chosen/
