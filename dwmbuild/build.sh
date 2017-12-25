#!/bin/bash

SRC_DIR="/src"
BIN_DIR="${SRC_DIR}/bin"
ST_DIR="${SRC_DIR}/st"
SL_DIR="${SRC_DIR}/slstatus"

if [ ! -d ${BIN_DIR} ]; then
    mkdir ${BIN_DIR}
fi

cd ${SRC_DIR}
make
mv -v dwm ${BIN_DIR}
rm -vf config.h drw.o dwm.o util.o
cd ${ST_DIR}
make
mv -v st ${BIN_DIR}
rm -vf config.h st.o
cd ${SL_DIR}
make
mv -v slstatus ${BIN_DIR}
rm -vf config.h slstatus.o util.o
chown -vR 1000:1000 ${BIN_DIR}
echo "DONE!"
