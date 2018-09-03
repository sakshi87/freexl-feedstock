#!/bin/bash

./configure --prefix=$PREFIX --host=$HOST --build=$BUILD

make -j$CPU_COUNT
make check -j$CPU_COUNT
make install -j$CPU_COUNT

# We can remove this when we start using the new conda-build.
find $PREFIX -name '*.la' -delete
