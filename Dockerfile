FROM archlinux:latest
MAINTAINER Mister Wrong hello@thefoggiest.dev

RUN pacman --noconfirm -Syu && pacman -S --noconfirm mime-types
COPY gmnisrv /usr/bin/
COPY rungmnisrv /usr/local/bin/

EXPOSE 1965

CMD ["/usr/local/bin/rungmnisrv"]

