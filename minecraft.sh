sudo apt update 
sudo apt install -y openjdk-19-jre screen 
curl -OJL https://piston-data.mojang.com/v1/objects/5b868151bd02b41319f54c8d4061b8cae84e665c/server.jar
echo eula=true > eula.txt
screen -S minecraft -d -m java -Xmx3072M -Xms3072M -jar server.jar nogui 

