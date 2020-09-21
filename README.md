# Ingvar78_microservices
Ingvar78 microservices repository

[![Infra Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_infra/master?label=Infra&style=plastic)](https://travis-ci.com/Otus-DevOps-2020-05/Ingvar78_infra)

[![Microservices Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/master?label=Microservices&style=plastic)](https://travis-ci.com/Otus-DevOps-2020-05/Ingvar78_microservices)
[![Docker-2 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/docker-2?label=Docker-2&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/docker-2)
[![Docker-3 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/docker-3?label=Docker-3&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/docker-3)
[![Docker-4 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/docker-4?label=Docker-4&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/docker-4)

[![GitLab-CI-1 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/gitlab-ci-1?label=Gitlab-CI-1&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/gitlab-ci-1)
[![Monitoring-1 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/monitoring-1?label=Monitoring-1&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/monitoring-1)

[![Monitoring-2 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/monitoring-2?label=Monitoring-2&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/monitoring-2)

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

<h1> 19. Сетевое взаимодействие Docker контейнеров. Docker Compose. Тестирование образов </h1>

<h2> 19.1 Работа с сетями в Docker. Использование docker-compose </h2>

• Разобраться с работой сети в Docker: none, host, bridge

<h2> 19.2 docker-compose </h2>

• Установить docker-compose на локальнуюмашину

• Собрать образы приложения reddit с помощью docker-compose

• Запустить приложение reddit с помощью docker-compose

<h2> 19.3 Переменные окружения в docker-compose </h2>

Параметризация с помощью переменных окружений:
    • порт публикации сервиса ui
    • версии сервисов
    • возможно что-либо еще на ваше усмотрение

* COMPOSE_PROJECT_NAME=xxx - название проекта (по умолчанию имя директории)

<h2> 19.4 Работа с docker-compose.override.yml, дебаг приложения </h2>


<h1> 21. Устройство Gitlab CI. Построение процесса непрерывной поставки </h1>

    • Подготовить инсталляцию Gitlab CI
    • Подготовить репозиторий с кодом приложения
    • Описать для приложения этапы пайплайна
    • Определить окружения

[Slack for GitLabCI](https://app.slack.com/client/T014MRC4Y5A/D0140TNJCBZ)


<h1> 23. Введение в мониторинг. Системы мониторинга. </h1>

<h2> 23.1 Prometheus: запуск, конфигурация, знакомство с Web UI </h2>

<h2> 23.2 Мониторинг состояния микросервисов </h2>

<h2> 23.3 Сбор метрик хоста с использованием экспортера </h2>


<h1> 24. Мониторинг приложения и инфраструктуры </h1>

<h2> 24.1 Мониторинг Docker контейнеров </h2>

<h2> 24.2 Визуализация метрик </h2>

<h2> 24.3 Сбор метрик работы приложения и бизнес метрик </h2>

<h2> Настройка и проверка алертинга </h2>

 язык запросов PromQl;
 Grafana, alermanager.

 Много заданий со ⭐ (необязательных)

<h2> Список образов на Dockerhub </h2>

REPOSITORY                TAG                 IMAGE ID            CREATED             SIZE
egerpro/prometheus        latest              852909dbba4d        27 minutes ago      112MB
egerpro/alertmanager      latest              f1a04c9c90ce        37 minutes ago      31.9MB
egerpro/comment           latest              45c4acb916c8        6 days ago          768MB
egerpro/post              latest              88f354786719        6 days ago          110MB
egerpro/ui                latest              2668081ea7bc        6 days ago          449MB
cloudprober/cloudprober   v0.10.9             a0e2df9dd522        6 weeks ago         36.7MB
mongo                     3.2                 fb885d89ea5c        22 months ago       300MB
grafana/grafana           5.0.0               18cae91912fc        2 years ago         301MB
google/cadvisor           v0.29.0             4623226ef052        2 years ago         62.2MB
prom/alertmanager         v0.14.0             23744b2d645c        2 years ago         31.9MB
prom/prometheus           v2.1.0              c8ecf7c719c1        2 years ago         112MB
prom/node-exporter        v0.15.2             ff5ecdcfc4a2        2 years ago         22.8MB
