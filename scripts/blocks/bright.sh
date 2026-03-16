#!/bin/sh

light=$(brillo -G | cut -c 1-3)

echo " $light%"
