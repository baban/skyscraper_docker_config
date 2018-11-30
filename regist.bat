docker container run -d -p 5000:5000 registry
docker image tag skyscraper_publify localhost:5000/skyscraper_publify
docker image push localhost:5000/skyscraper_publify
docker image tag skyscraper_digital-root-hub localhost:5000/skyscraper_digital-root-hub
docker image push localhost:5000/skyscraper_digital-root-hub
docker image tag skyscraper_nginx localhost:5000/skyscraper_nginx
docker image push localhost:5000/skyscraper_nginx
