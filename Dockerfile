FROM cm2network/steamcmd

USER root
RUN apt update -y && apt install libsqlite3-dev iproute2 -y

USER steam
RUN mkdir -p /home/steam/app/rust_app
COPY config/steamcmd_script /home/steam/app/config/steamcmd_script

WORKDIR /home/steam/steamcmd

RUN ./steamcmd.sh +runscript /home/steam/app/config/steamcmd_script

COPY config/ /home/steam/app/config/
# RUN ip a show
# RUN sed -i "s/IPAddressHere/$(ip a show dev enp0s8  | grep -w inet | awk '{ print $2 }' | cut -f1 -d'/')" /home/steam/app/config/start_rust.sh

EXPOSE 28015
EXPOSE 28016

WORKDIR /home/steam/app/rust_app

VOLUME /home/steam/app/rustapp

CMD ["bash", "../config/start_rust.sh"]