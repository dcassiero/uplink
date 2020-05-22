FROM dcassiero/em_dosbox-base:1.0

GAME ${game:-some_game}
ARG game
GAME $game

EXE ${exe::-some_exe}
ARG exe
EXE $exe

WORKDIR /em-dosbox/src
RUN wget https://devopsny.com/blog/em_dosbox/${game}.zip && unzip ${game}.zip && ./packager.py index ${game} ${exe}

EXPOSE 8000

CMD ["python", "-m", "SimpleHTTPServer"]