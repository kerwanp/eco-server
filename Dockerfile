FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y

# Install system dependencies
RUN ln -fs /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN apt-get install mono-devel lib32gcc1 -y

# Install SteamCMD
WORKDIR /steamcmd
RUN apt-get install curl -y
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
RUN ./steamcmd.sh +login anonymous +force_install_dir /server +app_update 739590 +quit

WORKDIR /server

# Setup Docker Entrypoint
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT /docker-entrypoint.sh

EXPOSE 3000
EXPOSE 3001