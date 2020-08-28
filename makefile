help:
	grep "##" makefile
dc-up: ##Создание и запуск docker-контейнеров, описанных в docker-compose.yml
	docker-compose up -d
dc-down: ##Остановка и УДАЛЕНИЕ docker-контейнеров, описанных в docker-compose.yml
	docker-compose down
dc-stop: ##stop docker-compose
	docker-compose stop
dc-start: ##start docker-compose
	docker-compose up -d
dp-create: ##create django project add $(pn=<your project name>)
	docker-compose run web django-admin startproject ${pn} .
startapp: ##create new django app $(an=<your app name>)
	docker-compose run web ./manage.py startapp ${an}
migrate: ##migrate
	docker-compose run web ./manage.py migrate


