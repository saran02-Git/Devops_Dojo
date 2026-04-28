#!/bin/bash

# Get IP of guvi.in
nslookup guvi.in

# Check CPU & Memory
top -b -n1 | head -5

# Test connectivity
ping -c 4 8.8.8.8
