#!/usr/bin/env bash

for f in $(ls -1 examples-*)
do
  echo $f
  sed "s/^/> /1" $f
  echo
  maxima --very-quiet < $f
  echo
  echo
  echo
done
