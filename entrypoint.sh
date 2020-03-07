#!/bin/sh

set -eax

DIR=${1:-.}
cd $DIR

if [ -f Pipfile ]
then
    pip install -U pipenv
    pipenv install -d --system
elif [ -f requirements.txt ]
then
    pip install -r requirements.txt
fi

flake8 --exclude .venv
