#!/bin/bash

cd ~/caffe-master/examples

python doSingle.py ../models/CarNet/ "$@" ../Guides/ant.jpg norm2 20 20
