# Ingvar78_microservices
Ingvar78 microservices repository


[![Infra Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_infra/master?label=Infra&style=plastic)](https://travis-ci.com/Otus-DevOps-2020-05/Ingvar78_infra)

[![Microservices Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/master?label=Microservices&style=plastic)](https://travis-ci.com/Otus-DevOps-2020-05/Ingvar78_microservices)
[![Docker-2 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/docker-2?label=Docker-2&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/docker-2)

[![Docker-3 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/docker-3?label=Docker-3&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/docker-3)




<h1>17. Docker контейнеры. Docker под капотом </h1>

<h2> 17.1 Установка и настройка docker, docker-compose, docker-machine, Изучение команд docker</h2>

<h2> 17.2 Создание docker-host в yandex cloud с помощью docker-machine </h2>

Созданы файлы для работы, собран образ, описанный в Dockerfile, запущенного через docker-machine

```
docker tag reddit:latest egerpro/otus-reddit:1.0
docker push egerpro/otus-reddit:1.0
docker run --name reddit -d -p 9292:9292 egerpro/otus-reddit:1.0
```

<h1>18. Docker образы. Микросервисы </h1>

<h2> 18.1 Научиться описывать и собирать Docker-образы для сервисного приложения </h2>
<h2> 18.2 Научиться оптимизировать работу с Docker-образами </h2>
<h2> 18.3 Запуск и работа приложения на основе Docker-образов, оценка удобства запуска контейнеров при помощи docker run </h2>

этапы сборкаи и запуска приложения описаны в ./src/test.xt
