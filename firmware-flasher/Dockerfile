FROM balenalib/rpi-raspbian as builder
RUN apt-get update && apt-get install -y build-essential git
RUN git clone https://github.com/Jerome-PS/JennicModuleProgrammer.git
RUN cd /JennicModuleProgrammer/Build && make
    
FROM balenalib/rpi-raspbian
COPY --from=builder /JennicModuleProgrammer/Build/JennicModuleProgrammer /bin/JennicModuleProgrammer
RUN mkdir /firmware
COPY scripts/* /firmware/
WORKDIR /firmware
ENTRYPOINT ["/firmware/prog_flash.sh"]
