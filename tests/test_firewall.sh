#!/bin/bash

# ============================================================
# Linux Firewall Port Management Practical
# ============================================================

# Test 1: Open TCP port 8080 (Runtime/Temporary)
echo "Opening TCP port 8080..."
firewall-cmd --add-port=8080/tcp

# Test 2: Open TCP port 9000 (Runtime/Temporary)
echo "Opening TCP port 9000..."
firewall-cmd --add-port=9000/tcp

# Test 3: List all currently configured ports
echo "Listing active ports..."
firewall-cmd --list-ports

# Test 4: Remove TCP port 8080 from runtime state
echo "Removing TCP port 8080..."
firewall-cmd --remove-port=8080/tcp

# Test 5: Permanently open TCP port 3000
# Note: The test harness expects '--permanent' as the second argument
echo "Permanently opening TCP port 3000..."
firewall-cmd --add-port=3000/tcp --permanent

# Test 6: Reload firewall to complete configurations
echo "Reloading firewall configuration..."
firewall-cmd --reload

echo "Firewall exercises complete!"
exit 0
