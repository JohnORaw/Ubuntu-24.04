#!/bin/bash
# By: Kiran Gopal (KMN)
# Date: 23JAN25
# Function: Show system hardware details
# Script: hardwareinfo.sh

# creating a directory for the system information
mkdir -p ~/Benchmark

# get the hostname and store it in a variable
host=$(hostname)

# defining the output file name
output_file=~/Benchmark/${host}_systeminfo.txt

# get the the hostname
echo -e "\n" >> $output_file
echo "========================" >> $output_file
echo "HOSTNAME" > $output_file
echo "========================" >> $output_file
echo $host >> $output_file
echo -e "\n" >> $output_file

# get the PCI devices information
echo "========================" >> $output_file
echo "PCI DEVICES" >> $output_file
echo "========================" >> $output_file
lspci >> $output_file
echo -e "\n" >> $output_file

# Document USB devices
echo "========================" >> $output_file
echo "USB Devices" >> $output_file
echo "========================" >> $output_file
lsusb >> $output_file
echo -e "\n" >> $output_file

# Document CPU information
echo "========================" >> $output_file
echo "CPU INFORMATION" >> $output_file
echo "========================" >> $output_file
lscpu >> $output_file
echo -e "\n" >> $output_file

# Document memory information
echo "========================" >> $output_file
echo "MEMORY INFORMATION" >> $output_file
echo "========================" >> $output_file
free -h >> $output_file
echo -e "\n" >> $output_file

# Document disk information
echo "========================" >> $output_file
echo "DISK INFORMATION" >> $output_file
echo "========================" >> $output_file
lsblk >> $output_file
echo -e "\n" >> $output_file

# Document network interfaces
echo "========================" >> $output_file
echo "NETWORK INTERFACES" >> $output_file
echo "========================" >> $output_file
ip a >> $output_file
echo -e "\n" >> $output_file

# Document kernel version
echo "========================" >> $output_file
echo "KERNAL VERSION" >> $output_file
echo "========================" >> $output_file
uname -r >> $output_file
echo -e "\n" >> $output_file

# Document loaded kernel modules
echo "========================" >> $output_file
echo "KERNAL MODULES" >> $output_file
echo "========================" >> $output_file
lsmod >> $output_file
echo -e "\n" >> $output_file


echo "System configuration has been stored in $output_file."
