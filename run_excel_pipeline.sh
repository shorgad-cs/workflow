#!/bin/bash

# The Excel Parameter  path
EXCEL="$1"

# Check if the Excel file parameter is provided
if [ -z "$EXCEL" ]; then
  echo "Usage: ./run_excel_pipeline.sh params.xlsx"
  exit 1
fi
while read -r A B IMAGE; do
  echo "Processing row: $A $B $IMAGE"

  # piping R To Python
  RESULT=$(Rscript analysis.R "$A" "$B" | python3 process.py)

    echo "Computed Result: $RESULT"
    
  echo "----------------------------"
done < <(python3 excel_to_rows.py "$EXCEL")
