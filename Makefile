# Собрать образы
docker-build:
	docker-compose build
# Собрать образы + проверить на наличие новых версии образов
docker-build-pull:
	docker-compose build --pull
# Запуск контейнеров в фоновом режиме
docker-up:
	docker-compose up -d
# Перезапуск контейнеров
docker-restart:
	docker-compose restart
# Остановить контейнеры поднятые командой docker-compose up
docker-down:
	docker-compose down --remove-orphans
# Проверить обновления composer
composer-install:
	docker-compose run --rm php-cli-debian composer install
composer-autoload:
	docker-compose run --rm php-cli-debian composer dump-autoload
brain-games:
	docker-compose run --rm php-cli-debian ./bin/brain-games
brain-even:
	docker-compose run --rm php-cli-debian ./bin/brain-even
composer-validate:
	docker-compose run --rm php-cli-debian composer validate
docker-lint:
	docker-compose run --rm php-cli-debian composer exec --verbose phpcs -- --standard=PSR12 src bin
lint:
	composer exec --verbose phpcs -- --standard=PSR12 src bin