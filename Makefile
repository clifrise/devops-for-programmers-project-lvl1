compose:
	docker compose up -d

compose-build:
	docker compose build

compose-logs:
	docker compose logs -f

compose-down:
	docker compose down || true

compose-clear:
	docker compose down -v --remove-orphans || true

compose-stop:
	docker compose stop || true

compose-restart:
	docker compose restart

compose-setup: compose-down compose-build app-setup

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

env-prepare:
	cp -n ./app/.env.example ./app/.env || true