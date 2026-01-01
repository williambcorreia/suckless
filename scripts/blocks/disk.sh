#!/bin/bash

DISK=$(df -h | awk 'NR == 5{ print $4 - $3 "G"}')

printf "$DISK "
