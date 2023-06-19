#!/bin/bash
cp hack.so hack_temp.so
export LD_PRELOAD=./hack_temp.so
sleep 98
rm hack_temp.so
