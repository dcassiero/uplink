# uplink
This is a repository of all infra-as-code and associated files and data for UPLINK. This project was insipired by [em_dosbox](https://github.com/dreamlayers/em-dosbox).

## Installation

Clone the repository with:

```bash
git clone https://github.com/dcassiero/uplink.git
```

## Usage
There are three componets to this project. Each component is located in its individually named repository.

1. vagrant - the infrastructure, including; hosts, Docker, and Rancher.
2. docker - The Dockerfiles for the base em_dosbox image and individual games.
3. site - The main frontend that serves up a catalog of games.


### vagrant
Contains Vagrantfiles for infra-as-code to stand up an environment.

### docker
Contains Dockerfiles for the base em_dosbox image as well as for individual DOS games.


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Credits
Inspiration: [em_dosbox](https://github.com/dreamlayers/em-dosbox)
Help: 

## License
[MIT](https://choosealicense.com/licenses/mit/)