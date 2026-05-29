#!/usr/bin/env bash

START_FREQ="$1"
END_FREQ="$2"
GAIN="${3:-30}"
DURATION="${4:-60}"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
OUTDIR="$HOME/rf-lab/logs"
OUTFILE="$OUTDIR/spectrum_${START_FREQ}_${END_FREQ}_${TIMESTAMP}.csv"

mkdir -p "$OUTDIR"

echo "RTL-SDR Spectrum Snapshot"
echo "Range: $START_FREQ to $END_FREQ"
echo "Gain: $GAIN"
echo "Duration: $DURATION seconds"
echo "Output: $OUTFILE"

rtl_power -f "$START_FREQ":"$END_FREQ":25k -g "$GAIN" -i 10 -e "$DURATION" "$OUTFILE"

echo "Capture complete."
