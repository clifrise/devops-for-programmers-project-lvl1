compose:
	docker compose up -d

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

env-prepare:
	cp -n ./app/.env.example ./app/.env || true