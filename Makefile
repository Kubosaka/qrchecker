run:
	docker compose up db -d
	sleep 10
	docker compose up

run-api:
	docker compose up -d db
	docker compose up api -d
	sleep 3
	docker-compose exec api bash -c 'air'   

down:
	docker compose down

vstop:
	docker stop qr-view

