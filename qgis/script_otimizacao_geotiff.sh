#!/bin/sh 
for f in  `find *.tif`;
do
gdal_translate -co COMPRESS=JPEG -co PHOTOMETRIC=YCBCR -CO TILED=YES -b 1 -b 2 -b 3 $f "/home/pedro/Desktop/Ortos_Estarreja/otimizados/"$f;
gdaladdo -r average --config COMPRESS_OVERVIEW JPEG --config PHOTOMETRIC_OVERVIEW YCBCR --config JPEG_QUALITY_OVERVIEW 85 "/home/pedro/Desktop/Ortos_Estarreja/otimizados/"$f 2 4 8 16 32;
done


