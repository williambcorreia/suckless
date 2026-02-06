#!/bin/sh

free -h | awk '/Mem/ { print "RAM:" $3 }' | sed 's/i//g'
