#!/usr/bin/env bash

shopt -s extglob

for i in [^sample]*.rb; do
  cheatset generate $i
done
