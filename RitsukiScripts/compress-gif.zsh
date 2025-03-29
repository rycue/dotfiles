#!/bin/zsh

# Check if an argument (file path) is given
if [[ -z "$1" ]]; then
    echo "Usage: $0 /path/to/input.gif"
    exit 1
fi

input_gif="$1"
gif_dir="${input_gif:h}"
gif_name="${input_gif:t}"
output_gif="${gif_dir}/${gif_name%.gif}-compressed.gif"
temp_gif="${gif_dir}/${gif_name%.gif}-temp.gif"

# Ensure ffmpeg and gifsicle are available
if ! command -v ffmpeg &>/dev/null || ! command -v gifsicle &>/dev/null; then
    echo "Error: Both ffmpeg and gifsicle are required."
    exit 1
fi

# Set an extremely low frame rate for maximum compression.
new_fps=3
echo "Reducing frame rate to ${new_fps} FPS for extreme compression."

# Use ffmpeg to reduce the frame rate (without scaling)
ffmpeg -i "$input_gif" -filter_complex "fps=${new_fps}" "$temp_gif" -y

# Now compress the GIF with extremely aggressive settings:
# -O3 for maximum optimization.
# --lossy=800 for very aggressive lossy compression.
# --colors=8 to drastically reduce the color palette.
# --no-dither to avoid any extra data from dithering.
echo "Applying extremely aggressive gifsicle compression..."
gifsicle -O3 --lossy=800 --colors=8 --no-dither "$temp_gif" -o "$output_gif"

# Clean up the temporary file
rm "$temp_gif"

echo "✅ Compressed GIF saved as: $output_gif"
