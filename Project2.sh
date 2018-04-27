#!/bin/bash

# number of threads:
for t in 1 2 4 6 8
do
	echo NUMTHREADS = $t
	
	g++ -DNUMTRIES=20 -DNUMTHREADS=$t Project2.cpp -o Project2 -lm -fopenmp
	./Project2
	
done