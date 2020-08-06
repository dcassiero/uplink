#!/bin/bash
game=(alien brain carmen cvania doom dune lodetlr mlbb nba oregondx prince sgate simearth sq1 ultima6 ys) 
exe=(ALIEN.EXE BRAIN.EXE CARMEN.EXE CEGA.EXE DOOM.EXE DUNE.BAT LR.BAT Mlbb.com nba.exe OREGON.EXE PRINCE.EXE SGATE.EXE SQ.COM ULTIMA6.EXE ys.exe)

docker rmi -f $(docker images -q)

for (( g=0,e=0; g<${#game[@]},e<${#exe[@]}; g++,e++))
do
  echo "Starting: game=${game[$g]} exe=${exe[$e]}"
  docker build --quiet --no-cache --build-arg game=${game[$g]} --build-arg exe=${exe[$e]} -t dcassiero/em_dosbox-${game[$g]}:uplink-v1.0 . && docker push dcassiero/em_dosbox-${game[$g]}:uplink-v1.0
  echo "Finished: game=${game[$g]} exe=${exe[$e]}"
done
