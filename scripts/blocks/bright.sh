#!/bin/sh

light=$(brillo | cut -d '.' -f1)

echo " $light%"
