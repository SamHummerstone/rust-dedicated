#!/bin/bash
./RustDedicated -batchmode -nographics \
  -server.ip 192.168.1.108 \
  -server.port 28015 \
  -rcon.ip 192.168.1.108 \
  -rcon.port 28016 \
  -rcon.password "test" \
  -server.maxplayers 10 \
  -server.hostname "Sam Test" \
  -server.identity "sam_test" \
  -server.level "Procedural Map" \
  -server.seed 12345 \
  -server.worldsize 3000 \
  -server.saveinterval 300 \
  -server.globalchat true \
  -server.description "Description Here" \
  -server.headerimage "512x256px JPG/PNG headerimage link here" \
  -server.url "Website Here"