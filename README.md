# PmResanBot

# This bot based on [GroupButler](https://github.com/SurenaTeam/PmResan) By Komeil

##Setup

```bash

$ wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
$ tar zxpf luarocks-2.2.2.tar.gz
$ cd luarocks-2.2.2
$ ./configure; sudo make bootstrap
$ sudo luarocks install luasocket
$ sudo luarocks install luasec
$ sudo luarocks install redis-lua
$ sudo luarocks install lua-term
$ sudo luarocks install serpent
$ cd ..
$ sudo apt-get install curl
$ git clone https://github.com/SurenaTeam/PmResan
$ cd BeatBotTeamBot && sudo chmod 777 launch.sh
$ lua bot.lua
```
