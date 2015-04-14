# WebSec Apache httpd Container

This project defines a very simple
[Docker Compose](https://docs.docker.com/compose/) application that
consists of a single Apache httpd service. It is intended for use in
the lab of the WebSec course and by no means considered "fit" for
production use.

The httpd image is based on the
[Apache 2.4.12 image](https://github.com/docker-library/httpd/blob/9c77579dcf981f060732bf41845edea8e39a130b/2.4/Dockerfile)
from the
[official Apache httpd docker repository](https://registry.hub.docker.com/_/httpd/). It
is essentially a vanilla httpd installation compiled from the source
distribution.

## Usage

1. Install [Docker](https://docs.docker.com/) and
   [Docker Compose](https://docs.docker.com/compose/).
2. Create a clone of this repository on your local machine.
3. Add websec-httpd as a name of your loopback network device
   (127.0.0.1) to your *hosts* file.
4. Make the necessary changes to `httpd-container/conf` as required by
   your assignment.
5. `cd` into the directory that holds `docker-compose.yml`.
6. Start the Web server with `sudo docker-compose up`. When you direct
   your Web browser to http://websec-httpd/, then the container should
   serve you an HTML page.

