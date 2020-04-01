# Project

This project is about hosting a vanilla minecraft server 1.15.2  with Docker.

## Installation

First clone the repositorie

```bash
git clone https://github.com/anthony974/Minecraft-Server.git
```
Then go to the folder and start the server
```bash
docker-compose up
```
You can use this for stopping the server
```bash
docker exec mc-server ./stop.sh
```
## Configuration
You can edit [server.properties](https://github.com/anthony974/Minecraft-Server/blob/master/server/server.properties) before starting the server for your own need.

If you want an access to the consol you can use this command
```bash
docker exec -it mc-server mcrcon -p @c0mp1c@t3DP@ssw0rd
```
The minecraft world is saved in the folder world.

## Thanks
Thanks [Tiiffi](https://github.com/Tiiffi) for the mcrcon.
