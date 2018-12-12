# ytdl-webserver [![Build Status](https://travis-ci.com/Algram/ytdl-webserver.svg?branch=master)](https://travis-ci.com/Algram/ytdl-webserver)
Webserver for downloading youtube videos. Ready for docker.
If you have questions, read the [blog post](https://blog.rphl.io/selfhosted-youtube-downloader-with-docker/).

![Demovideo](http://imgur.com/iEpA1oQ.gif)



## Installation
### As a server
``` bash
npm install && npm start
```

### As a docker image
#### Basic
```
docker run --name ytdl -d -p 3000:3000 algram/ytdl-webserver
```

#### Advanced
Build the docker image, create a directory to hold and access the downloaded videos on the host, and then start a container instance of the image.  
```
docker build -t <your username>/ytdl-webserver .
mkdir /tmp/videos
docker run --name ytdl -v /tmp/videos:/home/app/public/temp -p 3000:3000 -d <your username>/ytdl-webserver
```
In the example above, we are creating a directory under /tmp to hold the videos and then specifying a host mount to the container that corresponds to that new directory.  You may update this to any path on your host or use a different existing path if you would prefer. The host mount also improves performance as the downloaded files are written to the native host filesystem bypassing the CoW filesystem of the container.


## Development
To start contributing you only have to run one command.
``` bash
npm run dev
```
This will start webpack and a dev server on `localhost:8080`

## Direct use of youtube-dl

```
brew install youtube-dl
brew install libav
```

## License
MIT
