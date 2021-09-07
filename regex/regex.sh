#!/bin/bash

#This line matches by the string before the comma and the string after the comma
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

#This line matches by looking after 'I am ' and the string after '. My favorite sandwich is ' 
sed -En 's/\* I am ([a-zA-Z]+). My favorite sandwich is ([a-zA-Z]+)./1. \1\n2. \2\n/p' < r1_input.txt > r1_output.txt

#This line matches by looking after 'sandwich with ', takes the string connected with '.',
#and the string of two words at the end.
sed -E 's/\* sandwich with ([a-zA-Z\.]+) ([a-zA-Z ]+)/1. \1\n2. \2\n/' < r2_input.txt > r2_output.txt

