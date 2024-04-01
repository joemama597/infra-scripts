# infra-scripts

A repository to store infrastructure managment scripts.

### Usage

Run webserver script on a target system by using curl|bash.

`curl https://raw.githubusercontent.com/joemama597/infra-scripts/main/webserver.sh | bash`

run local vm:

`VM_NAME=vm-01 bash scripts/create-vm.sh`

deploy cloudflared to connect tunnel:

`curl https://raw.githubusercontent.com/josephhernandez209/wordpress/main/cloudflared.sh | bash`

deploy docker compose on vm:

```shell
bash scripts/docker.sh
sudo docker compose -f compose/docker-compose.yml up
```

##
libre potato 
`https://distro.libre.computer/ci/ubuntu/22.04/`