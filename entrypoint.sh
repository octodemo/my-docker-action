#!/bin/sh -l

echo "Hello $1"

SCAN_DIR="./.action_results"
if [[ -d "$SCAN_DIR" ]]; then
  echo "Directory already exists"
else
  echo "Creating .action_results directory"
  mkdir $SCAN_DIR
fi

OUTPUT_FILE=$SCAN_DIR/msg.txt
echo "Hello $1" > $OUTPUT_FILE
echo "Content of output file..."
cat $OUTPUT_FILE


time=$(date)
echo "::set-output name=time::$time"
