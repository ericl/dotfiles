#!/bin/bash

for file in *.symlink; do
    ln -sf `readlink -f $file` ~/.${file%.symlink}
done
