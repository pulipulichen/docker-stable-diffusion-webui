#!/usr/bin

script_dir=$(dirname "$0")

# Change the current working directory to the script's location
cd "$script_dir"
rm -rf ./output/tmp/lock*
# rm -rf ./output/screenshot/*.jpg
# rm -rf ./output/tmp/*.mp4


# Backup the original file (optional)
cp -f Dockerfile.template Dockerfile  # Comment out this line if you don't want a backup


# Check if today is Sunday
if [[ $(date +%w) == 0 ]]; then
  # Get today's date in YYYYMMDD format
  today=$(date +%Y%m%d)

  # Replace "DATE" with YYYYMMDD in output.sh using sed
  sed -i "s/DATE/$today/g" Dockerfile
  
  # echo "Successfully replaced 'DATE' with $today in output.sh"
fi

docker-compose down > /dev/null 2>&1
docker-compose up --build -d > /dev/null 2>&1

# sleep 3600000
# docker-compose down
# reboot