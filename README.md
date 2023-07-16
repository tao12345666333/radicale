# Radicale Docker Image

[![.github/workflows/build-and-push.yml](https://github.com/tao12345666333/radicale/actions/workflows/build-and-push.yml/badge.svg?branch=main)](https://github.com/tao12345666333/radicale/actions/workflows/build-and-push.yml)

This is a Docker image for running [Radicale](https://radicale.org/), a CalDAV and CardDAV server.

## Usage

To use this image, you can run the following command:

```
docker run -p 5232:5232 -v /path/to/data:/radicale ghcr.io/tao12345666333/radicale:latest
```

This will start a Radicale server on port 5232, with data stored in the `/path/to/data` directory on the host machine.

## Configuration

You can configure Radicale by passing command-line arguments to the `python3 -m radicale` command. For example, to set the logging level to debug, you can run:

```
docker run -p 5232:5232 -v /path/to/data:/radicale ghcr.io/tao12345666333/radicale:latest python3 -m radicale --storage-filesystem-folder=/radicale --hosts=0.0.0.0:5232 --logging-level=debug
```

For more information on configuring Radicale, see the [official documentation](https://radicale.org/v3.html#basic-configuration).

## License

This Docker image is licensed under the [MIT License](LICENSE).
