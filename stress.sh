#!/bin/bash
while true
do
[ -z "$TIMEOUT" ] && TIMEOUT=30
[ -z "$CPU" ] && CPU=1
[ -z "$LOAD" ] && LOAD=50
stress-ng -c $CPU -l $LOAD --timeout $TIMEOUT &
sleep 2
done
