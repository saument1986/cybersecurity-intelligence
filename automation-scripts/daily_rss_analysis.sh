#!/bin/bash

# Daily RSS Analysis Script
# Runs automated intelligence gathering from cybersecurity sources

DATE=$(date +%Y%m%d)
FABRIC_DIR="/mnt/media/intelligence/fabric"
OUTPUT_DIR="/mnt/media/intelligence/cybersecurity-intelligence"

cd $FABRIC_DIR

echo "Starting daily intelligence analysis - $DATE"

# Krebs on Security - extract wisdom
echo "Analyzing Krebs on Security..."
curl -s https://krebsonsecurity.com/feed/ | ./fabric --pattern extract_wisdom > "$OUTPUT_DIR/daily-reports/krebs_wisdom_$DATE.md"

# SANS ISC - threat analysis  
echo "Analyzing SANS ISC..."
curl -s https://isc.sans.edu/rssfeed.xml | ./fabric --pattern analyze_threats > "$OUTPUT_DIR/threat-analysis/sans_threats_$DATE.md"

echo "Daily analysis complete - files saved to GitHub repo"
