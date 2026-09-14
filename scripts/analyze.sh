#!/usr/bin/env bash

# Task 07: complete this script.
# Usage: ./scripts/analyze.sh FILE


# TODO: validate arguments
if [[ $# -eq 0 ]]; then
    echo "Usage: ./scripts/analyze.sh FILE"
    exit 1
fi

FILE="$1"

# TODO: validate file existence
if [[ ! -f "$FILE" ]]; then
    echo "Error: File $FILE does not exist"
    exit 1
fi

# TODO: print:
# Total ERROR: <number>
# Top Code: <code>
total_error=$(grep -c "ERROR" "$FILE")
echo "Total ERROR: $total_error"

top_code=$(grep "ERROR" "$FILE" | sed -E 's/.*code=(\S+).*/\1/' | sort | uniq -c | sort -nr | head -n1 | awk '{print $2}')
echo "Top Code: $top_code"

exit 0
