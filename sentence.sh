#!/bin/bash
cut -f1-3
cut -c13-
cut -d' ' -f4
head -c30 #select first 30 charecter
tr '()' '[]' #replace
tr -d '[a-z]'
tr -s ' ' #spaces