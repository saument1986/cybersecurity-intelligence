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
curl -s https://isc.sans.edu/rssfeed.xml | ./fabric --pattern analyze_threat_report > "$OUTPUT_DIR/threat-analysis/sans_threats_$DATE.md"

# Dark Reading - extract wisdom
echo "Analyzing Dark Reading..."
curl -s https://www.darkreading.com/rss.xml | ./fabric --pattern extract_wisdom > "$OUTPUT_DIR/daily-reports/darkreading_wisdom_$DATE.md"

# Microsoft Security - threat analysis
echo "Analyzing Microsoft Security..."
curl -s https://www.microsoft.com/security/blog/feed/ | ./fabric --pattern analyze_threat_report > "$OUTPUT_DIR/threat-analysis/microsoft_threats_$DATE.md"

# US-CERT - create questions for follow-up research
echo "Analyzing US-CERT..."
curl -s https://www.cisa.gov/cybersecurity-advisories/all.xml | ./fabric --pattern create_questions > "$OUTPUT_DIR/daily-reports/uscert_questions_$DATE.md"

echo "Daily analysis complete - files saved to GitHub repo"

# Auto-commit and push to GitHub
echo "Pushing to GitHub..."
cd "$OUTPUT_DIR"
git add .
git commit -m "Daily intelligence analysis - $DATE"
git push

echo "Intelligence pipeline complete - $DATE"
