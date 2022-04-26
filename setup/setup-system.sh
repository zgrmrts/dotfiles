set -evxu

# sudo ask for passwd only once in each termnial
echo "Defaults timestamp_timeout=-1" | sudo tee /etc/sudoers.d/timeout_infinite > /dev/null

echo "all done"
