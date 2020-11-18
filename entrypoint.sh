#!/bin/sh -l

echo "Hello $1"
echo "Hello $1" > msg.txt
cat msg.txt 
time=$(date)
echo "::set-output name=time::$time"
