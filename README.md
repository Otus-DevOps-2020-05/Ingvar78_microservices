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

[![Logging-1 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/logging-1?label=Logging-1&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/logging-1)

[![Kubernetes-1 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/kubernetes-1?label=Kubernetes-1&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/kubernetes-1)

[![Kubernetes-2 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/kubernetes-2?label=Kubernetes-2&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/kubernetes-2)

[![Kubernetes-3 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/kubernetes-3?label=Kubernetes-3&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/kubernetes-3)

[![Kubernetes-4 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/kubernetes-4?label=Kubernetes-4&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/kubernetes-4)

[![Kubernetes-5 Status](https://img.shields.io/travis/Otus-DevOps-2020-05/Ingvar78_microservices/kubernetes-5?label=Kubernetes-5&style=plastic)](https://github.com/Otus-DevOps-2020-05/Ingvar78_microservices/tree/kubernetes-5)


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

<h2> проделанная работа: </h2>

    • Разделен docker-compose.yml разделён на две части: docker-compose.yml - приложение и docker-compose-monitoring.yml - мониторинг.
    • Добавлен и запущен cAdvisor в сервисы докера и в настройки prometheus. Изучен его интерфейс и работа с ним.
    • Добавлена и настроена на prometheus grafana.
    • Скачан и импортирован в grafana дашборд "docker and system monitoring".(добавлен в каталог с дашбордами grafana DockerMonitoring.json)
    • Создан дашборд UI_Service_Monitoring и Business_Logic_Monitoring. Добавлены графики по метрикам приложения:

UI_Service_Monitoring:

```
- Rate of UI request count ("rate(ui_request_count[1m])")
- Rate of UI requests count with error ("rate(ui_request_count{http_status=~\"^[45].*\"}[1m])")
- HTTP responce time of 95% ("histogram_quantile(0.95, sum(rate(ui_request_response_time_bucket[5m])) by(le))")
```
Business_Logic_Monitoring:

```
- Posts Rate ("rate(post_count[1h])")
- Comments Rate ("rate(comment_count[1h])")
```

    • файлы дашбордов экспортированы и сохранены в директории monitoring/grafana/dashboards
    • Создан, настроен и запущен Alertmanager(создан конфиг с уведомлениями в slack, настроен prometheus(конфиг + добавлен alerts.yml))

[Список образов на Dockerhub]( https://hub.docker.com/u/egerpro)

<pre><font color="#4E9A06">REPOSITORY                TAG                 IMAGE ID            CREATED             SIZE</font>
<font color="#4E9A06">egerpro/prometheus        latest              852909dbba4d        58 minutes ago      112MB</font>
<font color="#4E9A06">egerpro/alertmanager      latest              f1a04c9c90ce        About an hour ago   31.9MB</font>
<font color="#4E9A06">egerpro/comment           latest              45c4acb916c8        6 days ago          768MB</font>
<font color="#4E9A06">egerpro/post              latest              88f354786719        6 days ago          110MB</font>
<font color="#4E9A06">egerpro/ui                latest              2668081ea7bc        6 days ago          449MB</font>
<font color="#4E9A06">cloudprober/cloudprober   v0.10.9             a0e2df9dd522        6 weeks ago         36.7MB</font>
<font color="#4E9A06">mongo                     3.2                 fb885d89ea5c        22 months ago       300MB</font>
<font color="#4E9A06">grafana/grafana           5.0.0               18cae91912fc        2 years ago         301MB</font>
<font color="#4E9A06">google/cadvisor           v0.29.0             4623226ef052        2 years ago         62.2MB</font>
<font color="#4E9A06">prom/alertmanager         v0.14.0             23744b2d645c        2 years ago         31.9MB</font>
<font color="#4E9A06">prom/prometheus           v2.1.0              c8ecf7c719c1        2 years ago         112MB</font>
<font color="#4E9A06">prom/node-exporter        v0.15.2             ff5ecdcfc4a2        2 years ago         22.8MB</font>
</pre>

<h1>26. Логирование и распределенная трассировка </h1>

    • Подготовка окружения
    • Логирование Docker-контейнеров
    • Сбор неструктурированных логов
    • Визуализация логов
    • Сбор структурированных логов
    • Распределенный трейсинг

<h1>28. Введение в Kubernetes</h1>

    • Разобрать на практике все компоненты Kubernetes, развернуть их вручную используя The Hard Way;
    • Ознакомиться с описанием основных примитивов нашего приложения и его дальнейшим запуском в Kubernetes.

<h1>29. Основные модели безопасности и контроллеры в Kubernetes </h1>

Kubernetes. Запуск кластера и приложения. Модель безопасности

    • Развернуть локальное окружение для работы с Kubernetes
    • Развернуть Kubernetes в Ya.cloud k8s
    • Запустить reddit в Kubernetes

<h2>30.Ingress-контроллеры и сервисы в Kubernetes </h2>

<h1>30.1 Kubernetes. Networks, Storages. </h1>

План
    • Ingress Controller
    • Ingress
    • Secret
    • TLS
    • LoadBalancer Service
    • Network Policies
    • PersistentVolumes
    • PersistentVolumeClaims

<h1>31. CI/CD в Kubernetes</h1>

План
    • Работа с Helm
    • Развертывание Gitlab в Kubernetes
    • Запуск CI/CD конвейера в Kubernetes

<h2>31.1 Helm</h2>
