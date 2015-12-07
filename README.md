# Run nginx virtual hosts within a Docker container

Run nginx in Docker with virtual hosts (server blocks) enabled and easily configurable.

## Info

Place nginx server blocks inside the `sites-enabled/` folder. See the examples.

Static files for each site go in `www/<domain_name>/html/`, eg `www/example.com/html/`.

It is possible to link a ruby web server (for example) in a container to this `nginx-virtual-hosts` container, and have nginx route your virtual hosts accordingly. Thus acting as a reverse-proxy.

See [Nginx, reverse proxies and DNS resolution](https://www.jethrocarr.com/2013/11/02/nginx-reverse-proxies-and-dns-resolution/) and [Umkus's nginx-boilerplate](https://github.com/Umkus/nginx-boilerplate) for ideas how this can be done. The nginx-boilerplate links to a php:fpm container.


## Steps

    $ docker build -t nginx-sites-enabled .
    $ docker-compose up -d

If running locally, you can optionally update your `hosts` file to test your domains. Eg:

    127.0.0.1              localhost
    <DOCKER_MACHINE_IP>    example.com
    <DOCKER_MACHINE_IP>    secondexample.com
