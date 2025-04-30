#!/bin/zsh

print -n "🕒 Enter initial time (e.g. 3:00 PM or 15:00): "
read START_TIME

print -n "🔁 How many reminders? (e.g. 3 for 3 reminders): "
read COUNT

print -n "📝 Enter title (optional): "
read TITLE

print -n "📢 Enter body (optional): "
read BODY

# Validate input
if [[ -z "$TITLE" && -z "$BODY" ]]; then
    echo "⚠️  You must enter at least a title or a body!"
    exit 1
fi

# Convert start time to epoch
EPOCH=$(date -d "$START_TIME" +%s 2>/dev/null)
if [[ -z "$EPOCH" ]]; then
    echo "❌ Invalid time format."
    exit 1
fi

# Loop to schedule reminders
for (( i = 0; i < COUNT; i++ )); do
    TIME=$(date -d "@$(( EPOCH + i * 180 ))" +"%H:%M %D")
    
    if [[ -n "$TITLE" && -n "$BODY" ]]; then
        CMD="notify-send --urgency=reminder \"$TITLE\" \"$BODY\""
    elif [[ -n "$TITLE" ]]; then
        CMD="notify-send --urgency=reminder \"$TITLE\""
    else
        CMD="notify-send --urgency=reminder \"$BODY\""
    fi

    echo "$CMD" | at "$(date -d "@$(( EPOCH + i * 180 ))" +"%H:%M %m/%d/%Y")"
    echo "✅ Reminder scheduled at $TIME\n"
done
