FROM debian
COPY discord-dl /usr/local/bin/discord-dl
ENV PATH=/bin:/usr/bin:/usr/local/bin
RUN apt-get update && \
    apt-get install -y libsqlite3-0 ca-certificates && \
    rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["discord-dl"]
