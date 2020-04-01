FROM alpine:latest
RUN apk update  && apk upgrade  
RUN apk add openjdk8 make gcc libc-dev git wget
RUN mkdir Minecraft_Server
RUN cd Minecraft_Server && wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
RUN git clone https://github.com/Tiiffi/mcrcon.git
RUN cd mcrcon && make && make install
RUN touch stop.sh && echo "#!/bin/sh" > stop.sh
RUN echo "mcrcon -p @c0mp1c@t3DP@ssw0rd /stop" >> stop.sh && chmod +x stop.sh
RUN touch start.sh && echo "#!/bin/sh" > start.sh
RUN echo "cd Minecraft_Server && java -Xmx1024M -Xms1024M -jar server.jar nogui" >> start.sh && chmod +x start.sh
EXPOSE 25565 25575
COPY server /Minecraft_Server
CMD ./start.sh