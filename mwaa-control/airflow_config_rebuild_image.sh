set -x

pwd
docker builder prune --force
docker builder prune --all --force
docker container prune --force
docker image prune --all --force
docker volume prune --force
docker network prune --force
docker system prune --all --volumes --force

./mwaa-local-env build-image

./mwaa-local-env start