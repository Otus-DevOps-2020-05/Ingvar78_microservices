# Ingvar78_microservices
Ingvar78 microservices repository

[![Build Status](https://travis-ci.com/Otus-DevOps-2020-05/Ingvar78_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2020-05/Ingvar78_microservices)

<h1>17. Docker контейнеры. Docker под капотом </h1>

<h2> 17.1 Установка и настройка docker, docker-compose, docker-machine, Изучение команд docker</h2>

<h2> 17.2 Создание docker-host в yandex cloud с помощью docker-machine </h2>

Созданы файлы для работы, собран образ, описанный в Dockerfile, запущенного через docker-machine

```
docker tag reddit:latest egerpro/otus-reddit:1.0
docker push egerpro/otus-reddit:1.0
docker run --name reddit -d -p 9292:9292 egerpro/otus-reddit:1.0
```
