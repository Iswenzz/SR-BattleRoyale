#!/bin/bash
source .cod4env

# Cleanup
cd "$MOD"
rm -v mod.ff

# SR
cd "$SR/assets"
cp -rv deffiles "$GAME"
cp -rv shader_bin "$GAME/raw"
cp -rv statemaps "$GAME/raw"
cp -rv techniques "$GAME/raw"
cp -rv techsets "$GAME/raw"
cp -v techsets/* "$GAME/raw/techsets/sm2"

# Assets
cd "$MOD/assets"
cp -v mod.csv "$GAME/zone_source"
cp -rv deffiles "$GAME"
cp -rv shader_bin "$GAME/raw"
cp -rv statemaps "$GAME/raw"
cp -rv techniques "$GAME/raw"
cp -rv techsets "$GAME/raw"
cp -v techsets/* "$GAME/raw/techsets/sm2"

# Shaders
cd "$GAME/raw/shader_bin"
for shader in portal_view q3_envmap sr_aurora sr_blur sr_bokeh sr_edge sr_glitch sr_grid sr_hexagon sr_loader sr_mirror sr_psy_edge sr_psy_glass sr_screen sr_shake sr_space_curvature sr_spray sr_translate sr_triangles sr_vhs sr_volumetric_clouds sr_zoom; do
	./shader_tool "$shader"
done

# Compile
cd "$GAME/bin"
./linker_pc -language english -compress -cleanup mod
cp -v "$GAME/zone/english/mod.ff" "$MOD/mod.ff"
