
#!/bin/bash
# Check if a command succeeds or fails

echo "Checking if 'ls /tmp' works..."
ls /tmp

if [ $? -eq 0 ]; then
    echo "Success: ls worked"
else
    echo "Failed: ls did not work"
fi
