#!/bin/sh
echo "Content-type: text/html"
echo ""
echo "<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' /><title>Flash"
echo "</title></head><body>"
echo "<h3>Disk Info:</h3>"
echo "<pre> $(df -h) </pre>"

echo "</body></html>"

