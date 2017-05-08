#!/bin/bash

mkdir -p data/images/$1
mv temp/*.jpg data/images/$1
rm -f data/aligned/cache.t7

./util/align-dlib.py data/images align outerEyesAndNose data/aligned --size 96

./batch-represent/main.lua -outDir data/features -data data/aligned

./demos/classifier.py train data/features
