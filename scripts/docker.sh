 sudo apt remove docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc

sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

curl -OJL https://gist.githubusercontent.com/josephhernandez209/4e15105c34412e6f662a2ab909441c0c/raw/2ef9168472ae6b85693866a6a4f8e154c0089ace/docker-compose.yml 

sudo docker compose -f docker-compose.yml up --detach

curl https://raw.githubusercontent.com/josephhernandez209/wordpress/main/cloudflared.sh | bash