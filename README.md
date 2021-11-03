# Nora ui image

The high performance database noria has it's [own ui](https://github.com/mit-pdos/noria-ui), this repository adds scripts and files to build it as a docker image.

## Using the image

The image is published to docker hub under `chweicki/noria-ui`.

Tags used to identify an image are the same as the images in this repository.

Both `linux/arm64/v8` and `linux/amd64` are published.

## Running the container

The final image uses nginx to serve the static files. It exposes it's content on port __80__.

## Cloning the repository
In case of the need to clone this repository remember to initialize the submodule.
```sh
git submodule update --init --recursive
```
