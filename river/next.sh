#!/bin/bash

# Ambil tag yang sedang difokuskan
current=$(river-get-tags | grep 'focused' | awk '{print $2}')
# Konversi dari biner ke desimal
current_dec=$((2#$current))

# Geser bit satu ke kiri (next tag)
next_dec=$((current_dec << 1))
# Jika sudah melebihi tag ke-9 (512), kembali ke awal
if [ $next_dec -gt 256 ]; then
  next_dec=1
fi

# Set tag baru
riverctl set-focused-tags $next_dec

