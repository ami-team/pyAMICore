#!/bin/sh

########################################################################################################################

rm -fr ./dist/ ./pyAMI_core.egg-info/

########################################################################################################################

./setup.py sdist

if twine check dist/*
then
    twine upload dist/*
fi

########################################################################################################################

rm -fr ./dist/ ./pyAMI_core.egg-info/

########################################################################################################################