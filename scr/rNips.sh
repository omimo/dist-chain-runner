#!/bin/bash


echo " start DD"

# order rDD.py     inFile, outFile, guideFile, model, layer#, iter#, octave#
# model is from "../models/
# guide  is from"bestGuide"   

inID=$1

echo $inID


Name=Ehab   
folderOut=./

# in=$Name.jpg #commented by omid
in=$2 # added by omid

cur=cur.jpg

# out=out.jpg # commented by omid
out=$3 # added by omid

rm $cur

f1001 () {
# notes
ID=1001
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $out dot_dot.jpg CarNet 13 23 1
   cp $out $outFile
}

f1002 () {
# notes
ID=1002
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg art_style_model 13 13 1
    cp $out $outFile
}

f1003 () {
# notes
ID=1003
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 1 15
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 1 15
    python2 rDD.py     $cur $cur dot_dot.jpg art_style_model 13 15 1
    python2 rDD.py     $cur $out polka.jpg CarNet 6 18 1
cp $out $outFile
}

f1004 () {
# notes
ID=1004
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 1 15 
    python2 rDD.py     $cur $cur polka.jpg CarNet 6 20 1 
    python2 rDD.py     $cur $out scu_vangogh_6.jpg tile_art_notest 5 5 5
cp $out $outFile
}

f1005 () {
# notes
ID=1005
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur dot_dot.jpg art_style_model 13 13 1
    python2 rDD.py     $cur $out scu_vangogh_6.jpg tile_art_notest 5 5 5
cp $out $outFile
}



f1006 () {
# notes
ID=1006
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur dot_dot.jpg art_style_model 13 13 1
    python2 rDD.py     $cur $out dot_dot.jpg googlenet_places 25 15 2
cp $out $outFile
}

f1007 () {
# notes
ID=1007
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $out dot_dot.jpg art_style_model 28 24 3
cp $out $outFile
    
}

f1008 () {
# notes
ID=1008
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $out dot_dot.jpg googlenet_places 13 23 1
cp $out $outFile   
}

f1009 () {
# notes
ID=1009
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur van_museum.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg googlenet_places 13 23 1
cp $out $outFile  
}


f1010 () {
# notes
ID=1010
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $out scu_vangogh_6.jpg tile_art_notest 5 3 3
cp $out $outFile     
}

f1011 () {
# notes
ID=1011
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $out avin3c.jpg googlenet_places 4 3 4
cp $out $outFile  
}

f1012 () {
# notes
ID=1012
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $out boccStatesGuide.jpg googlenet_places 4 3 4
cp $out $outFile  
}

f1013 () {
# notes
ID=1013
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur Many-splotches.jpg CarNet 6 20 2
    python2 rDD.py     $cur $out bark.jpg finetune_model 24 17 1
cp $out $outFile  
}

f1014 () {
# notes
ID=1014
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur vangogh_portrait_size850.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out cosmicblue.jpg googlenet_places 4 2 5
cp $out $outFile     
}

f1015 () {
# notes
ID=1015
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $out vangogh_portrait.jpg googlenet_places 4 3 4
cp $out $outFile  
    
}

####### Nouf Here
f1016 () {
# notes
ID=1016
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg art_style_model 13 13 1
cp $out $outFile  
}

f1017 () {
# notes
ID=1017
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg art_style_model 13 13 1
cp $out $outFile  
}

f1018 () {
# notes
ID=1018
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg art_style_model 13 13 1
cp $out $outFile      
}

f1019 () {
# notes
ID=1019
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg art_style_model 13 13 1
cp $out $outFile      
}

f1020 () {
# notes
ID=1020
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg art_style_model 13 13 1
cp $out $outFile      
}

f1021 () {
# notes
ID=1021
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg art_style_model 13 13 1
cp $out $outFile      
}

f1022 () {
# notes
ID=1022
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg art_style_model 13 13 1
cp $out $outFile      
}

f1023 () {
# notes
ID=1023
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg art_style_model 13 13 1
cp $out $outFile      
}

f1024 () {
# notes
ID=1024
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg art_style_model 13 13 1
cp $out $outFile      
}

f1025 () {
# notes
ID=1025
outFile=$folderOut$Name$ID.jpg
echo $outFile
    python2 rDD.py    $in $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $cur cosmicblue.jpg googlenet_places 4 2 5
    python2 rDD.py     $cur $out dot_dot.jpg art_style_model 13 13 1
cp $out $outFile      
}



# main ----------------------------------

case $inID in
    1001 )
        f1001 ;;
    1002 )
        f1002 ;;
    1003 )
        f1003 ;;
    1004 )
        f1004 ;;
    1005 )
        f1005 ;;
    1006 )
        f1006 ;;
    1007 )
        f1007 ;;
    1008 )
        f1008 ;;
    1009 )
        f1009 ;;
    1010 )
        f1010 ;;
    1011 )
        f1011 ;;
    1012 )
        f1012 ;;
    1013 )
        f1013 ;;
    1014 )
        f1014 ;;
esac


echo outFile=$folderOut$Name$ID.jpg

