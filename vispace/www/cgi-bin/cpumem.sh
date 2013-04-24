#!/bin/sh
echo "Content-type: text/html"
echo ""
echo "<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' /><title>Bash as CGI"
echo "</title></head><body>"
echo "Today is $(date)"
echo "<h4>CPU Info</h4>"
echo "$(./cpu)"
echo "<h3>$(top -b -n 1|grep Mem)</h3>"
echo "<h3>$(top -b -n 1|grep Cpu)</h3>"
echo "<h3>General system information for host $(hostname -s)</h3>"
echo ""
echo "<h3>Memory Info(MB)</h3>"
echo "<pre> $(free -m) </pre>"

echo "</body></html>"

