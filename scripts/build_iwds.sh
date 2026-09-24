#!/bin/bash
source "$(dirname "$0")/.cod4env"

# Cleanup
cd "$MOD"
rm -fv _images.iwd
rm -fv _sounds.iwd
rm -fv _weapons.iwd

# SR
cd "$SR/assets"
7z a -r -tzip "$MOD/_images.iwd" images/*
7z a -r -tzip "$MOD/_sounds.iwd" sound/*
7z a -r -tzip "$MOD/_weapons.iwd" weapons/*

# IWDs
cd "$MOD/assets"
7z a -r -tzip "$MOD/_images.iwd" images/*
7z a -r -tzip "$MOD/_sounds.iwd" sound/*
7z a -r -tzip "$MOD/_weapons.iwd" weapons/*
cd "$MOD/scripts"
