#!/bin/bash

for D in `ls /Library/Java/JavaVirtualMachines`
do
  jenv add /Library/Java/JavaVirtualMachines/$D/Contents/Home
done
