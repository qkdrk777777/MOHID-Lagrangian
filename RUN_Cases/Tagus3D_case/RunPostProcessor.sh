#!/bin/bash

clear

# "name" and "dirout" are named according to the testcase
name=Tagus3D
dirout=${name}_out

# "executables" are renamed and called from their directory

postProcessorDir=../../src/MOHIDLagrangianPostProcessor
postProcessor=${postProcessorDir}/MOHIDLagrangianPostProcessor.py

# CODES are executed according the selected parameters of execution in this testcase
errcode=0

python -W ignore $postProcessor -i ${name}.xml -o $dirout

if [ $errcode -eq 0 ]; then
  echo All done
else
  echo Execution aborted
fi
read -n1 -r -p "Press any key to continue..." key
echo
