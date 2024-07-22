mkdir -p ~/www
cd ~/www
cat > user-data << 'EOF'
#cloud-config
autoinstall:
  
  version: 1

  packages:
    - ubuntu-server


  identity:
    realname: 'spellcaster'
    username: ubuntu
    password: "$6$exDY1mhS4KUYCE/2$zmn9ToZwTKLhCw.b4/b.ZRTIZM30JZ4QrOQ2aOXJ8yk96xpcCof0kxKwuX1kqLG/ygbJ1f8wxED22bTL4F46P0"
    hostname: spellcaster


  storage:
    layout:
      name: direct

      network:
    ethernets:
      eth0:
        dhcp4: true  
        optional: true 
      eth1:
        dhcp4: false 
        addresses:
          - 192.168.1.10/24  
        gateway4: 192.168.1.1  
        nameservers:
          addresses:
            - 8.8.8.8 

EOF
touch meta-data

echo serving over http

cd ~/www
python3 -m http.server 3003