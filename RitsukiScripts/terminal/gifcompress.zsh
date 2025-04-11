#!/bin/zsh
# DESCRIPTION: Compress a GIF with extreme size reduction
# USAGE: ./compress-gif.zsh /path/to/input.gif (or drop the file here)
# RESULT: A much smaller .gif in the same folder

# 1. Check if a file path is provided
if [[ -z "$1" ]]; then
    echo "Usage: $0 /path/to/input.gif"
    exit 1
fi

# 2. Define file paths
input_gif="$1"
gif_dir="${input_gif:h}"                      # Get the directory of the input
gif_name="${input_gif:t}"                     # Get the file name of the input
output_gif="${gif_dir}/${gif_name%.gif}-compressed.gif"
temp_gif="${gif_dir}/${gif_name%.gif}-temp.gif"

# 3. Check if required tools are installed
if ! command -v ffmpeg &>/dev/null || ! command -v gifsicle &>/dev/null; then
    echo "Error: Both ffmpeg and gifsicle are required."
    exit 1
fi

# 4. Set new frame rate for compression
new_fps=3
echo "Reducing frame rate to ${new_fps} FPS for extreme compression."

# 5. Use ffmpeg to lower frame rate (no resizing)
ffmpeg -i "$input_gif" -filter_complex "fps=${new_fps}" "$temp_gif" -y

# 6. Compress using gifsicle with aggressive settings
echo "Applying extremely aggressive gifsicle compression..."
gifsicle -O3 --lossy=800 --colors=8 --no-dither "$temp_gif" -o "$output_gif"

# 7. Delete temporary file
rm "$temp_gif"

# 8. Done!
echo "✅ Compressed GIF saved as: $output_gif"
