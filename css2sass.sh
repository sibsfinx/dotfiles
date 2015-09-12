#!/bin/bash
for f in *.css; do sass-convert $f ${f%css}sass ; done 
rm *.css
