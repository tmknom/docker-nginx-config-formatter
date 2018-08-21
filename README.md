# docker-nginx-config-formatter

This formats nginx configuration files.

This is [1connect/nginx-config-formatter](https://github.com/1connect/nginx-config-formatter) wrapper.

## Requirements

- docker
- make

## Usage

`docker run` or `make`

### docker run

```
$ docker run --rm \
    -v <nginx_conf_dir>:/work \
    -w /work \
    tmknom/docker-nginx-config-formatter:1.0.0 \
    nginxfmt <nginx_conf_name>
```

### make

```
$ git clone git@github.com:tmknom/docker-nginx-config-formatter.git && cd docker-nginx-config-formatter

$ make format CONF_PATH=/path/to/nginx.conf
```

## License

MIT.
