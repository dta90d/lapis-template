FROM openresty/openresty:noble

RUN apt update && apt-get install -y --no-install-recommends libssl-dev && apt-get clean && rm -r /var/lib/apt/lists/*
RUN /usr/local/openresty/luajit/bin/luarocks install lapis
RUN /usr/local/openresty/luajit/bin/luarocks install inspect

WORKDIR /app

COPY ./src/* .
COPY ./src/.* .

CMD [ "lapis", "server" ]
