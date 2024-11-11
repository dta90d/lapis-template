# Docker & OpenResty & Lapis
This is a template project to setup an OpenResty & Lapis web development environment.

 - [Lapis](http://leafo.net/lapis), A web framework for Lua or MoonScript
 - [OpenResty](https://openresty.org), OpenResty® is a dynamic web platform based on NGINX and LuaJIT
 - [Lua](https://www.lua.org), The Lua language

## How to setup
Clone the repo and run
```bash
mkdir src && cd src
lapis new --force
```
to create lapis base configuration.

Then change repository configuration and link project to a new repository that you will work in if you need to.
```bash
git remote set-url origin <url>
echo > .gitignore
```

Then you can customize the project as you will to.

## Starting the container
Start the container by running
```bash
docker compose up --build
```
