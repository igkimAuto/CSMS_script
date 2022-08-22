#!/bin/bash

sudo docker stop fastapi-container
sudo docker rm fastapi-container

sudo docker rmi fastapi-image

rm -rf CSMS_backend/

#git clone git@github.com:igkimAuto/CSMS_backend.git
git clone https://github.com/igkimAuto/CSMS_backend.git

sudo docker build --tag fastapi-image ./CSMS_backend/

sudo docker run -d --name fastapi-container -p 8000:8000 --network fastapi-net fastapi-image

sudo docker ps -a