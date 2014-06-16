#!/usr/bin/env bash

ext=".txt"
prefix=${1}
cnt=0

for p in *
do
    if [[ "${p: -4}" == "${ext}" ]]
    then
        mv "${p}" "${prefix}-${p}"
        if [[ $? -ne 0 ]]
        then
            echo "Renaming ${p} failed"
        else
            cnt=$((${cnt} + 1))
        fi
    fi
done

echo "Renamed ${cnt} files"
