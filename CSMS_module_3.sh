rm -rf CSMS_module_3

# git clone https://github.com/igkimAuto/CSMS_module_3.git
git@github.com:igkimAuto/CSMS_module_3.git

docker stop CSMS_module_3-container
docker rm CSMS_module_3-container
docker rmi CSMS_module_3-image
docker build --tag CSMS_module_3-image ./CSMS_module_3
docker run -d --name CSMS_module_3-container -p 82:82 --network fastapi-net CSMS_module_3-image


#docker exec -it vue-container bash