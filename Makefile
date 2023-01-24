run:
	docker compose up db -d
	sleep 5
	docker compose up api -d
	docker compose up view -d
	docker-compose exec api bash -c 'air'

run-api:
	docker compose up -d db
	docker compose up api -d
	sleep 3
	docker-compose exec api bash -c 'air'   

down:
	docker compose down
