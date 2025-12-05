#!/bin/bash
TARGET_DIR="$1"
if [ -z "$TARGET_DIR" ]; then
	echo "Error: No directory provided"
	exit 1
fi

echo "Fixing permissions in: $TARGET_DIR"

find "$TARGET_DIR" -name '*.txt' -exec chmod 644 {} \;
find "$TARGET_DIR" -name '*.sh' -exec chmod 700 {} \;

echo "Fix finished at: $(date)" >> audit.log

echo "[$(date +%Y-%m-%d)] Case Closed: <And-8-And>" >> evidence/log_1.txt
