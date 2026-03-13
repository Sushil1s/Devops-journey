#!/bin/bash

echo "===================================="
echo "  Sushil's Log Analyzer Script"
echo "===================================="

# Create a fake log file using redirect >>
echo "INFO: App started successfully" > app.log
echo "ERROR: Database connection failed" >> app.log
echo "INFO: Retrying connection..." >> app.log
echo "ERROR: Timeout after 30 seconds" >> app.log
echo "WARNING: Memory usage at 85%" >> app.log
echo "ERROR: Service crashed unexpectedly" >> app.log
echo "INFO: App restarted" >> app.log

echo ""
echo "---- FULL LOG FILE (cat) ----"
cat app.log

echo ""
echo "---- ERRORS ONLY (grep) ----"
grep "ERROR" app.log

echo ""
echo "---- WARNINGS ONLY (grep) ----"
grep "WARNING" app.log

# Count errors using pipe |
error_count=$(grep "ERROR" app.log | wc -l)
echo ""
echo "Total ERROR count: $error_count"

# Search using wildcard - list all .log files
echo ""
echo "---- ALL LOG FILES (wildcard *) ----"
ls *.log

echo ""
echo "===================================="
echo " Analysis complete!"
echo "===================================="
