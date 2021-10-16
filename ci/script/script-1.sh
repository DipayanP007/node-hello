#!/bin/bash

ls
cd source-code
npm pack
ls
mv *.tgz ../source/
ls 
echo "--------------------"
cd ..
ls source