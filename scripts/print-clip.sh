#!/bin/bash

dt=$(date +%Y-%m-%d_%H-%M-%S)

maim -s | xclip -selection clipboard -t image/png
