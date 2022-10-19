# Just another GC Docker

GC Docker is a docker container for dealing with [Grasscutter](https://github.com/Grasscutters/Grasscutter/)

### Prerequisities

In order to run this container you'll need docker and docker-compose installed.

- [Windows](https://docs.docker.com/windows/started)
- [Linux](https://docs.docker.com/linux/started/)
- [Docker Compose](https://docs.docker.com/compose/)

### Usage

#### Running

```shell
docker-compose up -d
```

#### Accessing the container

You may want to run [commands](https://github.com/Grasscutters/Grasscutter/wiki/Commands) in the GC CLI, after running the container you can access it with the name you gave it, for example:

```bash
docker attach grasscutter
```

#### Volumes

- `./data` - Grasscutter data
- `./web` - Grasscutter web
- `./plugins` - Grasscutter plugins
- `./config.json` - Grasscutter configure
- `./keystore.p12` - Grasscutter certificate
- `./mongodb-data` - MongoDB data

## Acknowledgments

### People you want to thank

- [Grasscutter](https://github.com/Grasscutters/Grasscutter/)
- [Grasscutter resource](https://github.com/tamilpp25/Grasscutter_Resources)
- [Grasscutter resource (alternate)](https://gitlab.com/yukiz/GrasscutterResources.git)
- My brain
