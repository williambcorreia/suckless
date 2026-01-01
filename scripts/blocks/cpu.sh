#!/bin/bash

top -bn1 | grep CPU | awk '/^%CPU/ {print "CPU:" $2 + $4 "%"}'
