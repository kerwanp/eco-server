# Docker - Eco Server

Docker Image to run an [Eco](https://store.steampowered.com/app/382310/Eco/) Server.

## Usage (Docker)

```
$ docker run kerwan/eco-server:latest -p 3000:3000 -p 3001:3001
```

Once finished, you will be able to connect to your server with your Local IP.
To expose the server to the outside world, simply open the following ports:
- UDP/3000 (Game Server)
- TCP/3001 (Web Server)

## Useful links

- Game Steam Page: https://store.steampowered.com/app/382310/Eco/
- Eco Discord: http://discord.gg/eco
- Eco Wiki: https://eco.gamepedia.com/