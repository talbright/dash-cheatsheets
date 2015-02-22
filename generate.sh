#!/usr/bin/env bash

for i in *.rb; do
  cheatset generate $i
done
