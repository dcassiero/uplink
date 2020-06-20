#!/bin/bash
game=(alien ark2 brain carmen cvania doom dune keen6 lodetlr mlbb nba oregondx prince sgate simearth sq1 td3 ultima6 vette ys bchess) 
exe=(ALIEN.EXE ARK.COM BRAIN.EXE CARMEN.EXE CEGA.EXE DOOM.EXE DUNE.BAT keen6.exe LR.BAT Mlbb.com nba.exe OREGON.EXE PRINCE.EXE SGATE.EXE SIMEARTH.EXE SQ.COM TD3.EXE ULTIMA6.EXE VETTE.EXE ys.exe chess.exe)

docker rmi -f $(docker images -q)

for (( g=0,e=0; g<${#game[@]},e<${#exe[@]}; g++,e++))
do
  echo "Starting: game=${game[$g]} exe=${exe[$e]}"
  docker build --quiet --no-cache --build-arg game=${game[$g]} --build-arg exe=${exe[$e]} -t dcassiero/em_dosbox-${game[$g]}:1.0 . && docker push dcassiero/em_dosbox-${game[$g]}:1.0
  echo "Finished: game=${game[$g]} exe=${exe[$e]}"
done
