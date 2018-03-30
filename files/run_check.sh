#/bin/bash
./docker-bench-security.sh -c $1 | grep -qce "WARN"
not_found=$?
if [ "$not_found" == "1" ]; then
    exit 0
fi
# Done exit with bad code if not scored
if [ "$2" == "0"]; then
    exit 0
fi
./docker-bench-security.sh -c $1
exit 1
