#!/usr/bin/env python3

def frequency_to_wavelength(frequency_mhz):
    """Convert frequency in MHz to wavelength in meters."""
    speed_of_light = 300_000_000
    frequency_hz = frequency_mhz * 1_000_000
    wavelength_meters = speed_of_light / frequency_hz
    return wavelength_meters

def main():
    frequency_mhz = float(input("Enter frequency in MHz:"))
    wavelength = frequency_to_wavelength(frequency_mhz)

    print (f"Wavelength: {wavelength:.2f} meters")

if __name__ == "__main__":
    main()
