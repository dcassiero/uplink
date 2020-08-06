FROM dcassiero/em_dosbox-base:uplink-v1.0
LABEL maintainer="Daniel Cassiero <daniel.cassiero@gmail.com>"

ARG game
ARG exe

WORKDIR /em-dosbox/src
RUN mkdir -p /em-dosbox/src/assets
COPY source assets/
RUN wget https://devopsny.com/blog/em_dosbox/${game}.zip && unzip ${game}.zip && ./packager.py index ${game} ${exe}

EXPOSE 8000

CMD ["python", "-m", "SimpleHTTPServer"]