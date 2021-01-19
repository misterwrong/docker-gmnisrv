FROM archlinux:latest
MAINTAINER Mister Wrong hello@thefoggiest.dev

RUN pacman --noconfirm -Syu && pacman -S --noconfirm mime-types
COPY gmnisrv /usr/bin/

EXPOSE 1965

CMD ["/usr/bin/gmnisrv","-C","/usr/local/etc/gmnisrv.ini"]
