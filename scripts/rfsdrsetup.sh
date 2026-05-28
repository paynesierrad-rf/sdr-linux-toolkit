#!/usr/bin/env bash
echo "RF/SDR Workspace Setup"
echo -e "\nUpdating package list..."
sudo apt update

echo -e "\nInstalling basic programs..."
sudo apt install -y \
        git \
        curl \
        wget \
        vim \
        python3 \
        python3-pip \
        python3-venv \
        rtl-sdr \
        gqrx-sdr \
        gnuradio \
        inspectrum \
        sox \
        ffmpeg

echo -e "\nCreating RF labs workspace..."
mkdir -p ~/rf-lab/{captures,iq,audio,logs,scripts,notes}

echo -e "\nWorkspace created at: $HOME/rf-lab"
echo -e "\nChecking installed programs..."


check_tool() {
        tool_name="$1"
        version_command="$2"

        if command -v "$tool_name" > /dev/null
        then
        echo -e "\n$tool_name"
        echo "Path: $(command -v "$tool_name")"
        echo "Version: $($version_command 2>/dev/null | head -n 1)"
        else
        echo -e "\n$tool_name: NOT FOUND"
        fi
    }

check_tool "git" "git --version"
check_tool "curl" "curl --version"
check_tool "wget" "wget --version"
check_tool "vim" "vim --version"
check_tool "python3" "python3 --version"
check_tool "pip3" "pip3 --version"
check_tool "rtl_test" "rtl_test --help"
check_tool "gqrx" "gqrx --version"
check_tool "gnuradio-companion" "gnuradio-companion --version"
check_tool "inspectrum" "inspectrum --version"
check_tool "sox" "sox --version"
check_tool "ffmpeg" "ffmpeg -version"

echo -e "\nWorkspace setup complete!"

