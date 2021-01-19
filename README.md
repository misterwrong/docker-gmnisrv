# docker-gmnisrv
Dockerfile for gmnisrv

To install, do something similar to this:

1. Clone gmnisrv at https://git.sr.ht/~sircmpwn/gmnisrv
2. Build it:
    ```
    $ ./configure
    $ make
    ```
3. Create directories on your host for the content, configuration and certificates, for example:
    ```
    $ md /srv/gemini/{gmi,conf,certs}
    ```
4. Copy the executable to the directory where you keep the Dockerfile and the example ini file to your conf directory.
5. Build the docker image:
    ```
    # docker build . -t mrwrong/gmnisrv
    ```
6. Run the image:
    ```
    # docker run -d --name gmnisrv --restart=always -p1965:1965 -v /srv/gemini/content:/srv/gemini -v /srv/gemini/conf:/usr/local/etc -v /srv/gemini/certs:/var/lib/gemini/certs mrwrong/gmnisrv
    ```
7. Open and forward TCP port 1965 to your host.
