#!/bin/bash


TARGET="/home/root464/caffe-master/examples"

cp "$2" "$TARGET/tmp_in.png"
 
cd "/home/root464/caffe-master/examples"

./rNips.sh $1 tmp_in.png tmp_out.png

cp tmp_out.png "$3"
