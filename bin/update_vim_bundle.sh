#! /bin/bash

set -x

for i in ~/.vim/bundle/*; do
    cd $i
    git pull
done

