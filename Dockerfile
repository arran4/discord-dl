FROM alpine
COPY discord-dl /usr/local/bin/discord-dl
ENV PATH=/bin:/usr/bin:/usr/local/bin
ENTRYPOINT ["discord-dl"]
