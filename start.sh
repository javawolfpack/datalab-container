#!/bin/bash

chown -R prof:prof /code
[ -z "$HANDOUT" ] && { echo "Need to set HANDOUT"; exit 1; }

[ "$HANDOUT" == 1 ] && make cleanallfiles
[ "$HANDOUT" == 1 ] && make
cd contest
pwd
[ "$HANDOUT" == 1 ] && make cleanallfiles
su prof
pwd
make start

while :
do
  sleep 60
done
