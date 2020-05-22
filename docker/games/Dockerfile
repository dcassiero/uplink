FROM dcassiero/em_dosbox-base:1.0

ARG game
ARG exe

WORKDIR /em-dosbox/src
RUN wget https://devopsny.com/blog/em_dosbox/${game}.zip && unzip ${game}.zip && ./packager.py index ${game} ${exe}

EXPOSE 8000

CMD ["python", "-m", "SimpleHTTPServer"]