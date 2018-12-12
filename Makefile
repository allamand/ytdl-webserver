


build:
	docker build -t sebmoule/ytdl-webserver .

push:build
	docker push sebmoule/ytdl-webserver

run:
#	docker run --name youtube-dl -p 3000:3000 -d sebmoule/ytdl-webserver
	docker run --rm -v $(PWD)/videos:/home/app/public/temp --name youtube-dl -P -d sebmoule/ytdl-webserver

