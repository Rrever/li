echo "-----------------------------------------"
echo " USER PROCESS AND SYSTEM INFO"
echo "-----------------------------------------"

echo "Current User: $(whoami)"

echo "Hostname: $(hostname)"

echo "Date and Time: $(date)"

echo "System Update:"
uptime

echo "Logged-in Users:"
who

echo "Memory Uses:"
df -h

echo "System Information"
uname -a

echo "------------------------------------------"
