#!/bin/bash

echo "ip,port"
for i in {1..254}; do
  timeout .1 bash -c "echo >/dev/tcp/$1.$i/$2" 2>/dev/null && echo "$1.$i,$2"
done

