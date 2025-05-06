#!/bin/sh

# As Intune doesn't provide a solution for changing macOS-based devices names, this script does that directly on the machine
# Script should be added in Intune admin center -> Devices -> Manage devices -> Scripts and remediations -> Platform scripts
# Rest of the settings in Intune should be tailored to specific organization requirements

# In that case we're using specified prefix and device serial Number
serialNum=`system_profiler SPHardwareDataType | grep 'Serial Number (system)' | awk '{print $NF}'`
scutil --set HostName "EU_macOS_$serialNum"
scutil --set LocalHostName "EU_macOS_$serialNum"
scutil --set ComputerName "EU_macOS_$serialNum"