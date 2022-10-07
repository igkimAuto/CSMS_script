rm -rf CSMS_module_3

# git clone https://github.com/igkimAuto/CSMS_module_3.git
git clone git@github.com:igkimAuto/CSMS_module_3.git

docker stop csms_module_3-container
docker rm csms_module_3-container
docker rmi csms_module_3-image
docker build --tag csms_module_3-image ./csms_module_3
docker run -d --name csms_module_3-container -p 82:82 --network fastapi-net csms_module_3-image


#docker exec -it vue-container bash