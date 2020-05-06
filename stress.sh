#!/bin/bash
while true
do
[ -z "$TIMEOUT" ] && TIMEOUT=30
[ -z "$CPU" ] && CPU=1
[ -z "$LOAD" ] && LOAD=50
[ -z "$SLEEP" ] && SLEEP=5
stress-ng -c $CPU -l $LOAD --timeout $TIMEOUT &
sleep $SLEEP
done
