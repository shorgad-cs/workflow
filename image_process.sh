#!/bin/bash

IMAGE="$1"
TEXT="$2"
OUT="out_$(basename "$IMAGE")"

convert "$IMAGE" \
  -resize 600x600 \
  -gravity South \
  -pointsize 36 \
  -fill white \
  -annotate +0+10 "Value: $TEXT" \
  "$OUT"

echo "$OUT"
