#!/bin/zsh

# Set your scripts folder path here
SCRIPT_DIR=~/RitsukiScripts/terminal

if [[ ! -d "$SCRIPT_DIR" ]]; then
    echo "❌ Folder not found: $SCRIPT_DIR"
    exit 1
fi

echo "\n📜 Listing all the terminal scripts in $SCRIPT_DIR/:\n"

for script in "$SCRIPT_DIR"/*.zsh; do
    [[ -f "$script" ]] || continue
    script_name="${script:t}"
    echo "🔧 $script_name"

    # Skip shebang, show only the instruction comments
    awk '
    NR==1 && /^#!/ { next }      # Skip the first line if it’s a shebang
    /^#/ { gsub(/^# ?/, ""); print "   📘 " $0; next }
    { exit }' "$script"

    echo ""
done
