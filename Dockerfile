FROM cm2network/steamcmd

RUN mkdir -p /home/steam/app/rust_app
COPY config/ /home/steam/app/config/

WORKDIR /home/steam/steamcmd

RUN ./steamcmd.sh +runscript /home/steam/app/config/steamcmd_script

EXPOSE 28015
EXPOSE 28016