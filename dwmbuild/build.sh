#!/bin/bash

BINDIR="/src/bin"

if [ ! -d ${BINDIR} ]; then
    mkdir ${BINDIR}
fi

cd /src
make
mv -v dwm ${BINDIR}
rm -vf config.h drw.o dwm.o util.o
cd st
make
mv -v st ${BINDIR}
rm -vf config.h st.o
chown -vR 1000:1000 ${BINDIR}
echo "DONE!"
