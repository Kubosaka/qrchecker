run:
	docker compose up db -d
	sleep 1
	docker compose up api -d
	docker compose up view

run-api:
	docker compose up -d db
	docker compose up api

down:
	docker compose down
