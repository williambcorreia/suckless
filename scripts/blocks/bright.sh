#!/bin/sh

light=$(brillo -G | cut -c 1-2)

echo " $light%"
