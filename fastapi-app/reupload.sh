docker stop $(docker ps -q) ; docker container prune -f ; docker image prune -a -f;
docker build -t thesocialminds-website .; docker tag thesocialminds-website unclezann/thesocialminds-website; docker login;
docker push unclezann/thesocialminds-website