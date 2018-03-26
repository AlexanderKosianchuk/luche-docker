# luche-docker
Docker containers description to start luche
Based on laradoc 5 https://github.com/laradock

Disable exist services

systemctl disable __SERVICE__

Docker commands that may need

docker ps
docker images -a
docker system prune -a
docker inspect __ID__
docker exec -it <containerIdOrName> bash
