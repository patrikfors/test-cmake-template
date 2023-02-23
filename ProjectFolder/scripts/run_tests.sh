#!/bin/bash

echo "Running tests..."
ctest --preset default
RESULT=$(echo $?)
echo "Finished running tests..."
exit $RESULT
