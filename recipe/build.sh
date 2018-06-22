#!/bin/bash

export CFLAGS="-I$PREFIX/include -L$PREFIX/lib -O2 -Wl,-S $CFLAGS"
export LDFLAGS="-L$PREFIX/lib -Wl,-rpath,${PREFIX}/lib $LDFLAGS"

./configure --prefix=$PREFIX --host=$HOST --build=$BUILD

make -j$CPU_COUNT
make check -j$CPU_COUNT
make install -j$CPU_COUNT
