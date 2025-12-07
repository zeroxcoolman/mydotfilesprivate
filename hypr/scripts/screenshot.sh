#!/bin/zsh

# Selected screenshot passed to Satty, let Satty handle saving/copying
grim -g "$(slurp)" - | satty -f -

