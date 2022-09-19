#!/bin/sh
meson setup --prefix=$HOME/.local -Dthemes=gtk2,gtk3,gtk4 -Dvariants=dark build/
meson install -C build/
