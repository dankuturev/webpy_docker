# Склады и товары

## Порядок действий для сборки и запуска контейнера

docker build -t dankutyrev/dockerhub:myapp .
docker run --publish 8000:8000 --detach dankutyrev/dockerhub:myapp
