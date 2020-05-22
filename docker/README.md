# Dockerfiles

This is a collection of Dockerfiles which are used for the uPLINK project. This can be simplifed, a TODO.

## Components

1. compose - a collection of docker-compose and rancher-compose files.
2. em_dosbox-base - the first stage for the individual em_dosbox-<game> image
3. games - individual Dockerfiles, per game. This can probably be greatly simplfied,.

## Dockerfile ARGs
Use these with

```bash
docker build --build-arg...
```

| Game | Short Name | ARG game | ARG exe |
| --- | --- | --- | --- |
| Doom | doom | doom | DOOM.EXE |
| Commander Keen 6 | keen6 | keen6 | keen.exe |
| Lode Runner | lodetlr | lodetlr | LR.BAT |
| MicroLeague Baseball | mlbb | mlbb | Mlbb.com |
| Lakers versus Celtics and the NBA Playoffs | nba | nba | nba.exe |




## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
[MIT](https://choosealicense.com/licenses/mit/)