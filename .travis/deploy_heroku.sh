#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
# heroku plugins:install heroku-container-registry
#docker login --username=_ --password=$(heroku auth:token) registry.heroku.com
docker login -u _ --password=8a43cc1d-96dc-4c41-a73e-7a99eafb3ca1 registry.heroku.com
heroku container:push web --app serene-caverns-87756
heroku container:release web -app serene-caverns-87756
