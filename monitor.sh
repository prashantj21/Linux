#!/bin/bash

echo "System Monitoring Report - $(date)" >> /var/log/system_monitor/report.log

echo "CPU & Memory Usage:" >> /var/log/system_monitor/report.log
top -b -n1 | head -10 >> /var/log/system_monitor/report.log

echo "Disk Usage:" >> /var/log/system_monitor/report.log
df -h >> /var/log/system_monitor/report.log

echo "Directory Sizes:" >> /var/log/system_monitor/report.log
du -sh /var/* >> /var/log/system_monitor/report.log

echo "-----------------------------------" >> /var/log/system_monitor/report.log
