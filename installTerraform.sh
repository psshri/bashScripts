# https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common


wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg


gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint


echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list


sudo apt update


sudo apt-get install terraform

# following method installs a specific version of terraform
wget https://releases.hashicorp.com/terraform/1.4.7/terraform_1.4.7_linux_386.zip
unzip terraform_1.4.7_linux_386.zip 
sudo mv terraform /usr/local/bin
terraform -version
