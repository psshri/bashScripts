## Following lines will install docker on ubuntu

sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce
sudo usermod -aG docker psshri

# Run the following command separately to check the status of docker 
# sudo systemctl status docker

# Run the following command separately to login back to let the group addition take effect
# su - psshri

# Run the following command to verify that you are now a part of docker group too
# groups
