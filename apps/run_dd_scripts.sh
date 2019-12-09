#!/bin/bash


TARGET="/home/root464/caffe-master/examples"

ORI=`identify -verbose $2| grep 'exif:Orientation:' | cut -d ' ' -f 6`

echo "Orientation: $ORI"

convert -resize '1300x1300>' "$2" "$TARGET/tmp_in.jpg"
cp "$TARGET/tmp_in.jpg" "$2"

cd "/home/root464/caffe-master/examples"

./rNips.sh $1 tmp_in.jpg tmp_out.jpg && cp tmp_out.jpg "$3"

exiftool -orientation=$ORI -n $3

rm tmp_in.jpg
rm cur.jpg
rm tmp_out.jpg
