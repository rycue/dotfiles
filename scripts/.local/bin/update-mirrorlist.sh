#!/bin/bash

# This is my personal mirrorlist. Tweak it to your needs.
sudo reflector --country Singapore,Taiwan,Japan,South_Korea \
  --age 6 \
  --protocol https \
  --sort rate \
  --latest 20 \
  --save /etc/pacman.d/mirrorlist \
  --verbose
