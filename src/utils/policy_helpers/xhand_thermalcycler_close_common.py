"""Shared constants, states and functions for xhand_thermalcycler_close."""

from __future__ import annotations

from enum import Enum


class AbppXHandThermalCyclerMode(Enum):
    CLOSE = "close"
    OPEN = "open"
