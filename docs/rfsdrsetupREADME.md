# RF/SDR Program Setup Script

## What This Script Does

This script prepares a Linux system for basic RF/SDR analysis by:

- Updating the apt package list
- Installing common RF/SDR and Linux utility programs
- Creating a standard RF lab workspace
- Checking whether installed tools are available
- Displaying tool paths and version information

## What It Installs

| Package | What It Does | Why It Is Included |
|---|---|---|
| git | Version control | Used to clone, track, and push repository changes |
| curl | Command-line web/API tool | Useful for downloads, API calls, and automation |
| wget | File download utility | Useful for downloading files from URLs |
| vim | Terminal text editor | Used to edit scripts and configuration files |
| python3 | Python interpreter | Runs Python utility scripts |
| python3-pip | Python package installer | Installs Python libraries |
| python3-venv | Virtual environment support | Creates isolated Python environments |
| rtl-sdr | RTL-SDR command-line utilities | Provides tools like rtl_test, rtl_sdr, rtl_fm, and rtl_power |
| gqrx-sdr | SDR receiver GUI | Provides spectrum/waterfall display and receiver functions |
| gnuradio | Signal processing toolkit | Used for building SDR signal processing workflows |
| inspectrum | IQ/signal inspection tool | Used to inspect recorded signal captures |
| sox | Audio processing tool | Useful for trimming, converting, and processing audio |
| ffmpeg | Audio/video conversion tool | Useful for converting audio/video formats |

## Workspace Created

The script creates:

```text
~/rf-lab/
  captures/
  iq/
  audio/
  logs/
  scripts/
  notes/
```

## This Script Does Not:

- Configure specific SDR hardware
- Modify system drivers manually
- Install Python libraries
- Decode or record signals
- Transmit anything
- Change firewall or network security settings
