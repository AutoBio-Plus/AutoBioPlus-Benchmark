#!/usr/bin/env bash
set -euo pipefail

TASKS=(
  ABPP-Aloha-Screw-Tighten
  ABPP-Shadow-Centrifuge-Insert
  ABPP-Shadow-Pipette-Insert
  ABPP-Shadow-Pipette-Manipulate
  ABPP-Shadow-Tube-Insert
  ABPP-Shadow-Tube-Rotate
  ABPP-Wuji-Centrifuge-Close
  ABPP-Wuji-Tweezers-Manipulate
  ABPP-XHand-Bunsen-Manipulate
  ABPP-XHand-MixerPanel-Manipulate
  ABPP-XHand-ThermalCycler-Close
  ABPP-XHand-ThermalCycler-Open
  ABPP-XHand-Tube-Insert
)

for task in "${TASKS[@]}"; do
  uv run python scripts/compute_norm_stats.py "$task" --batch-size=64 --num-workers=16
done
