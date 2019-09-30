#!/bin/bash
# 32 Bit Version

cd zip
make clean
make libz.a CC="gcc -m64"
cp libz.a ../window/x86_64/libzip.a
rm -f *.o
cd ..


gcc -m64 -O2 -std=gnu99 -shared \
 tolua.c \
 int64.c \
 uint64.c \
 pb.c \
 lpeg.c \
 struct.c \
 cjson/strbuf.c \
 cjson/lua_cjson.c \
 cjson/fpconv.c \
 luasocket/auxiliar.c \
 luasocket/buffer.c \
 luasocket/except.c \
 luasocket/inet.c \
 luasocket/io.c \
 luasocket/luasocket.c \
 luasocket/mime.c \
 luasocket/options.c \
 luasocket/select.c \
 luasocket/tcp.c \
 luasocket/timeout.c \
 luasocket/udp.c \
 luasocket/wsocket.c \
 sproto/sproto.c \
 sproto/lsproto.c \
 zip/luazlib.c \
 pbc/binding/lua/pbc-lua.c \
 -o Plugins/x86_64/tolua.dll \
 -I./ \
 -Iluajit-2.1/src \
 -Iluasocket \
 -Isproto \
 -Ipbc \
 -Icjson \
 -Isnappy \
 -lws2_32 \
 -Wl,--whole-archive \
 window/x86_64/libluajit.a \
 window/x86_64/libpbc.a \
 window/x86_64/libzip.a \
 -Wl,--no-whole-archive -static-libgcc -static-libstdc++
 

