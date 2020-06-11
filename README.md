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

### docker
Contains Dockerfiles for the base em_dosbox image as well as for individual DOS games.

### site
Contains the code for the frontend site as well as the reverse proxy.

### vagrant
Contains Vagrantfiles for infra-as-code to stand up an environment.

## Diagram
(a general idea, subject to change)
https://go.gliffy.com/go/html5/13289187

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Credits
Inspiration: [em_dosbox](https://github.com/dreamlayers/em-dosbox)
Help: 

## License
[MIT](https://choosealicense.com/licenses/mit/)