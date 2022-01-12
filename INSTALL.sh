#!/bin/sh

for DIR in contest-* ; do
  cd $DIR && make all && cd ..
done
