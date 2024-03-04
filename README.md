# infra-scripts

A repository to store infrastructure managment scripts.

### Usage

Run webserver script on a target system by using curl|bash.

`curl https://raw.githubusercontent.com/joemama597/infra-scripts/main/webserver.sh | bash`

run local vm:

`VM_NAME=vm-01 bash scripts/create-vm.sh`

deploy docker compose on vm:

```shell
bash scripts/docker.sh
sudo docker compose -f compose/docker-compose.yml up
```
