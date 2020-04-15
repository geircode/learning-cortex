cd %~dp0
docker rm -f learning_cortex-filecontainer-1
docker-compose -f docker-compose.yml down --remove-orphans
REM docker-compose -f docker-compose.yml build --no-cache
docker-compose -f docker-compose.yml up --build --remove-orphans
docker exec -it learning_cortex-filecontainer-1 /bin/sh
