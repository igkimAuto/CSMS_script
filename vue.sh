rm -rf CSMS_frontend
#git clone git@github.com:igkimAuto/CSMS_frontend.git
git clone https://github.com/igkimAuto/CSMS_frontend.git
docker stop vue-container
docker rm vue-container
docker rmi vue-image
docker build --tag vue-image ./CSMS_frontend
docker run -d --name vue-container -p 81:81 --network fastapi-net vue-image


#docker exec -it vue-container bash