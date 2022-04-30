#!/bin/bash

echo "Task 1."
cat example_log.log | cut -d ' ' -f 1 | sort | uniq -c | sort -nr | head -n 1
echo "Task 2."
cat example_log.log | cut -d ' ' -f 7 | sort | uniq -c | sort -nr | head -n 1
echo "Task 3."
cat example_log.log | cut -d ' ' -f 1 | sort | uniq -c | sort -nr
echo "Task 4."
cat example_log.log | grep -e "\" 404" | cut -d ' ' -f 7 | sort | uniq
echo "Task 5."
cat example_log.log | cut -d ' ' -f 4 | sort | uniq -c | sort -nr | head -n 1 | cut -d ' ' -f 8 | cut -d '[' -f 2
echo "Task 6."
cat example_log.log | awk -F '[ "]' '{print "UA:" $17 " " $18 " " $19 " " $20 " " $21 " " $22 " " $23 " IP:" $1}' | sort -nr | uniq | grep -e '[Bb]ot'
