#!/bin/zsh

# Check if gifsicle is installed
if ! command -v gifsicle &>/dev/null; then
  echo "❌ gifsicle is not installed. Please install it to proceed."
  exit 1
fi

# Check for input
if [ -z "$1" ]; then
  echo "Usage: $0 input.gif"
  exit 1
fi

INPUT="$1"

# Verify that the input file exists
if [ ! -f "$INPUT" ]; then
  echo "❌ File '$INPUT' does not exist."
  exit 1
fi

# Extract directory and filename info
DIR="$(dirname "$INPUT")"
BASENAME="$(basename "$INPUT" .gif)"
OUTPUT="$DIR/${BASENAME}-compressed.gif"

# Compress the GIF to black and white
gifsicle "$INPUT" \
  --dither \
  --colors 64 \
  --optimize=3 \
  -o "$OUTPUT"

echo "✅ Compressed black-and-white GIF saved as: $OUTPUT"
