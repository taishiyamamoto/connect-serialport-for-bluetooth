#!/bin/sh

ADDRESS="80:1F:12:BC:76:15"
CHANNEL="6"
DEVICE_NUMBER=0
BAUD_RATE=230400
CHARACTOR_SIZE=8

sudo rfcomm -rML 0 bind $DEVICE_NUMBER $ADDRESS $CHANNEL
sudo stty -F /dev/rfcomm$DEVICE_NUMBER $BAUD_RATE cs$CHARACTOR_SIZE
sudo rfcomm release $DEVICE_NUMBER
