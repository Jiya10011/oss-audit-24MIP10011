#!/bin/bash
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0
echo "=============================================="
echo "           LOG FILE ANALYZER                 "
echo "=============================================="
echo ""
echo "  Log File : $LOGFILE"
echo "  Keyword  : $KEYWORD"
echo "----------------------------------------------"
if [ -z "$LOGFILE" ]; then
    echo "  ERROR: No log file specified."
    echo "  Usage: ./script4_log_analyzer.sh <logfile> [keyword]"
    exit 1
fi
if [ ! -f "$LOGFILE" ]; then
    echo "  File not found. Trying alternatives..."
    ALT_LOGS=("/var/log/syslog" "/var/log/messages" "/var/log/dmesg")
    for ALT in "${ALT_LOGS[@]}"; do
        if [ -f "$ALT" ]; then
            echo "  Found alternative: $ALT -- using this instead."
            LOGFILE=$ALT
            break
        fi
    done
    if [ ! -f "$LOGFILE" ]; then
        echo "  No readable log file found. Exiting."
        exit 1
    fi
fi
if [ ! -s "$LOGFILE" ]; then
    echo "  WARNING: The log file is empty. Nothing to analyze."
    exit 0
fi
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"
echo ""
echo "  Result: Keyword '$KEYWORD' found $COUNT time(s)"
echo ""
echo "----------------------------------------------"
echo "  Last 5 lines containing '$KEYWORD':"
echo "----------------------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo ""
echo "=============================================="
echo "  Open source tools like grep, tail, and bash"
echo "  make log analysis free and transparent."
echo "=============================================="
