# Dockerfiles

This is a collection of Dockerfiles which are used for the UPLINK project. This can be simplifed, a TODO.

## Components

1. compose - a collection of docker-compose and rancher-compose files.
2. em_dosbox-base - the first stage for the individual em_dosbox-<game> image
3. games - individual Dockerfiles, per game. This can probably be greatly simplfied,.

## Dockerfile ARGs
Use these with

```bash
docker build --build-arg...
```

| Game | Short Name | ARG game | ARG exe | Genre |
| --- | --- | --- | --- | --- |
| Doom | doom | doom | DOOM.EXE | FPS |
| Commander Keen 6 | keen6 | keen6 | keen.exe | Action |
| Lode Runner | lodetlr | lodetlr | LR.BAT | Action |
| MicroLeague Baseball | mlbb | mlbb | Mlbb.com | Sports |
| Lakers versus Celtics and the NBA Playoffs | nba | nba | nba.exe | Sports |
| Prince of Persia | prince | prince | PRINCE.EXE | Action |
| SimEarth | simearth | simearth | SIMEARTH.EXE | Simulation |
| Space Quest 1 | sq1 | sq1 | SQ.COM | Adventure |
| Where In The World Is Carmen Sandiego? | carmen | carmen | CARMEN.EXE | Adventure |
| The Oregon Trail Deluxe | oregondx | oregondx | OREGON.EXE | Simulation |
| Ultima 6 | ultima6 | ultima6 | ULTIMA6.EXE | RPG |



## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
[MIT](https://choosealicense.com/licenses/mit/)