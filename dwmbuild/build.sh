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
rm -vf config.h slstatus.o util.o \
        components/battery.o \
        components/cpu.o \
        components/datetime.o \
        components/disk.o \
        components/entropy.o \
        components/hostname.o \
        components/ip.o \
        components/kernel_release.o \
        components/keyboard_indicators.o \
        components/load_avg.o \
        components/num_files.o \
        components/ram.o \
        components/run_command.o \
        components/swap.o \
        components/temperature.o \
        components/uptime.o \
        components/user.o \
        components/volume.o \
        components/wifi.o
chown -vR 1000:1000 ${BIN_DIR}
echo "DONE!"
