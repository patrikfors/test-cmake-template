#!/bin/bash

echo "Started cmake_build.sh, building CMAKE files..."
rm -r build &> /dev/null
cmake --preset debug
cmake --preset release
cmake --build --preset debug
cmake --build --preset release

echo "Finished building CMAKE files..."
