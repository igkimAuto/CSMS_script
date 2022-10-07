#!/bin/bash

sudo docker stop front-container
sudo docker rm front-container

sudo docker rmi front-image

#rm -rf CSMS_test/
rm -rf CSMS_html/

git clone git@github.com:donghyeonAuto/CSMS_html.git
# git clone https://github.com/igkimAuto/CSMS_html.git

sudo docker build --tag front-image ./CSMS_html/

sudo docker run -d --name front-container -p 80:80 --network fastapi-net front-image

sudo docker ps -a