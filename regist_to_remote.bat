# docker run -d -p 5000:5000 -v /home/baban/docker_registry/:/var/lib/registry registry
docker image tag skyscraper_publify 192.168.0.5:5000/skyscraper_publify
docker image push 192.168.0.5:5000/skyscraper_publify
docker image tag skyscraper_digital-root-hub 192.168.0.5:5000/skyscraper_digital-root-hub
docker image push 192.168.0.5:5000/skyscraper_digital-root-hub
docker image tag skyscraper_nginx 192.168.0.5:5000/skyscraper_nginx
docker image push 192.168.0.5:5000/skyscraper_nginx
