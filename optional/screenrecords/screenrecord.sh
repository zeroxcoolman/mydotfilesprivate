#!/bin/zsh

DIR="$HOME/Pictures/screenrecords"
PIDFILE="/tmp/screenrecord.pid"
mkdir -p "$DIR"

# If PID file exists → stop recording
if [[ -f "$PIDFILE" ]]; then
    # Read PIDs
    read REC_PID OVERLAY_PID FILE < "$PIDFILE"

    # Stop recording & overlay
    kill -INT $REC_PID
    kill $OVERLAY_PID
    rm "$PIDFILE"

    echo "Recording stopped."
    exit 0
fi

# Get region from slurp
REGION="$(slurp)" || exit 1
X=$(echo $REGION | cut -d' ' -f1)
Y=$(echo $REGION | cut -d' ' -f2)
W=$(echo $REGION | cut -d'x' -f1 | cut -d' ' -f3)
H=$(echo $REGION | cut -d'x' -f2)

# Output file
FILE="$DIR/$(date +%Y-%m-%d_%H-%M-%S).mp4"

# Start overlay
python3 ~/path/to/overlay.py $X $Y $W $H &
OVERLAY_PID=$!

# Start recording
wf-recorder -g "$REGION" -f "$FILE" &
REC_PID=$!

# Save PIDs for toggle
echo "$REC_PID $OVERLAY_PID $FILE" > "$PIDFILE"

echo "Recording started..."

