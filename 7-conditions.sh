#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 200 ]
then
echo "the value is $NUMBER less than 200"
else
echo "the value is $NUMBER not less than 200"
fi