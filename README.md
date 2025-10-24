# allen_and_heath_xonek2_mixxx_mapping

This is a slimmed down version of the official Mixxx XoneK2 mapping. This is for use with an external mixer so...

- EQ knobs are unmapped
- Faders are unmapped

I use the EQ and faders for MIDI control over other things like VST effects in Ardour.

# Allen & Heath Xone:K2 Mixxx MIDI Mapping - Quick Reference

## Overview
This mapping supports multiple Xone:K2 units with different layouts based on MIDI channel configuration. Each column can control either a **Deck** or **Effect Unit**.

## Global Controls (Bottom Section)

### Bottom Encoders
| Control | Normal | Shift | Function |
|---------|--------|-------|----------|
| **Left Encoder** | Internal Clock BPM | Master Headphone Gain | Turn to adjust |
| **Left Encoder Press** | - | Toggle Head Split | - |
| **Right Encoder** | Browse Tracks | Master Gain | Turn to adjust |
| **Right Encoder Press** | Load to First Stopped Deck | - | Hold for deck pick mode |

### Layer/Shift Controls
| Button | Function |
|--------|----------|
| **Layer Button** | Cycle through deck bottom button layers (Intro/Outro → Hotcue → Loop) |
| **Shift Button** | Hold for shifted functions, press with Layer for supershift |

## Deck Controls (Per Column)

### Top Encoder
| Mode | Function |
|------|----------|
| **Normal** | Jog wheel (nudge) |
| **Shift** | Pitch adjustment |

### Encoder Press
| Mode | Function |
|------|----------|
| **Normal** | Sync toggle |
| **Shift** | Quick Effect enable toggle |
| **Supershift** | Reset pitch to zero |

### Top Buttons (Left to Right)
| Button | Normal | Shift | Supershift |
|--------|--------|-------|------------|
| **Button 1** | PFL (Headphone Cue) | Reset Pitch | Beat Grid Translate |
| **Button 2** | Cue | Start/Stop | Keylock Toggle |
| **Button 3** | Play/Pause | Reverse | Quantize Toggle |

### Bottom Buttons - Layer Dependent

#### Intro/Outro Layer (Amber)
| Button | Normal | Shift | Supershift |
|--------|--------|-------|------------|
| **1** | Intro Start Cue | Fast Seek Forward | Clear Intro Start |
| **2** | Intro End Cue | Fast Seek Backward | Clear Intro End |
| **3** | Outro Start Cue | Slow Seek Forward | Clear Outro Start |
| **4** | Outro End Cue | Slow Seek Backward | Clear Outro End |

#### Hotcue Layer (Red)
| Button | Normal | Shift | Supershift |
|--------|--------|-------|------------|
| **1** | Hotcue 1 | Fast Seek Forward | Clear Hotcue 1 |
| **2** | Hotcue 2 | Fast Seek Backward | Clear Hotcue 2 |
| **3** | Hotcue 3 | Slow Seek Forward | Clear Hotcue 3 |
| **4** | Hotcue 4 | Slow Seek Backward | Clear Hotcue 4 |

#### Loop Layer (Mixed Colors)
| Button | Normal | Shift | Supershift | Color |
|--------|--------|-------|------------|-------|
| **1** | Loop Toggle | Loop & Stop | Set Loop In | Red |
| **2** | Beat Loop | Beat Loop Roll | Set Loop Out | Green |
| **3** | Loop Double | Beat Jump Forward | Double Beat Jump Size | Amber |
| **4** | Loop Halve | Beat Jump Backward | Halve Beat Jump Size | Amber |

## Effect Unit Controls (Per Column)

### Top Encoder
Currently unmapped (reserved for future use)

### Encoder Press
**Normal**: Effect focus button (switches between effect units)

### Knobs
| Mode | Function |
|------|----------|
| **Normal** | Effect parameters (varies by column/effect) |
| **Shift** | Effect selector (turn to change effects) |

### Top Buttons
| Column | Function |
|--------|----------|
| **Column 1** | Effect enable buttons |
| **Other Columns** | Effect button parameters |

### Bottom Buttons
| Button | Normal | Shift |
|--------|--------|-------|
| **1-2** | Channel 1-2 Enable | Channel 1-2 Enable |
| **3** | Channel 3/Master Enable | Master/Channel 3 Enable |
| **4** | Channel 4/Headphone Enable | Headphone/Channel 4 Enable |

## MIDI Channel Layouts

| Channel | Layout Description |
|---------|-------------------|
| **11 (0xA)** | Four Decks: 3-1-2-4 order |
| **12 (0xB)** | Decks Right: Effects-Effects-Deck-Deck |
| **13 (0xC)** | Decks Left: Deck-Deck-Effects-Effects |
| **14 (0xD)** | Effects Middle: Deck-Effects-Effects-Deck |
| **15 (0xE)** | Decks Middle: Effects-Deck-Deck-Effects |

## LED Colors
- **Red**: Primary functions, hotcues, PFL
- **Amber**: Secondary functions, intro/outro, loop controls
- **Green**: Loop functions, effect parameters

## Notes
- Latching Layers must be **OFF** on the K2 hardware
- Multiple K2s can be chained via X-Link
- Deck pick mode: Hold right encoder press, then press deck play button to load track
