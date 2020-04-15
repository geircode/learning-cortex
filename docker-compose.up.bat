cd %~dp0
docker rm -f learning_cortex-1
docker-compose -f docker-compose.yml down --remove-orphans
docker-compose -f docker-compose.yml pull

docker network create -d overlay --attachable learning_cortex_network

docker-compose -f docker-compose.yml up -d --remove-orphans
REM wait for 1-2 seconds for the container to start
pause
docker exec -it learning_cortex-1 /bin/bash