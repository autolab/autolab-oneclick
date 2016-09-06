echo "Uninstalling Autolab Project..."

echo "Wait..."

sudo rm -rf ./server/Autolab ./server/Tango ./server/db-data
sudo rm -rf ./local/Autolab ./local/Autolab ./local/Tango ./local/db-data

docker rm -f $(docker ps -a -q)

sudo rm -rf /var/lib/docker

sudo apt-get purge docker-engine;
sudo apt-get autoremove --purge docker-engine;
sudo apt-get autoclean;

echo "Now you can delete the whole directory of Autolab-project"
