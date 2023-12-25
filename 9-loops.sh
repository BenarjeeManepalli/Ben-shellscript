#!/bin/bash

FRUITS=("apple" "banana" "orange" "mango" "grape")

echo "the all fruits available in the market ::"

for fruit in ${FRUITS[@]}
do 
echo "current fruit: $fruit"
done