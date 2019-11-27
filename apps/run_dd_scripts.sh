#!/bin/bash


TARGET="/home/root464/caffe-master/examples"

cp "$2" "$TARGET/tmp_in.jpg"
 
cd "/home/root464/caffe-master/examples"

./rNips.sh $1 tmp_in.jpg tmp_out.jpg && cp tmp_out.jpg "$3"


