#!/bin/bash

./demos/classifier.py infer data/features/classifier.pkl $1
rm -f temp/*.jpg
