run:
	docker compose up db -d
	docker compose up api -d
	docker compose up view -d

run-api:
	docker compose up -d db
	docker compose up api -d
	sleep 3
	docker-compose exec api bash -c 'air'   

down:
	docker compose down
