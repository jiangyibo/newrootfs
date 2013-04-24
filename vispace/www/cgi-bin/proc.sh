#!/bin/sh
echo "Content-type: text/html"
echo ""
echo "<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' /><title>Bash as CGI"
echo "</title></head><body>"
echo "<h3>进程状态</h3>"
echo "<pre> $(top -b -n 1|grep -v ' 0%   0%') </pre>"
echo "</body></html>"

