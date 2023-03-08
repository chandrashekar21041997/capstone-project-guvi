$var1
$var2
echo "Please enter value for First variable"
read var1
echo "Please enter value for Second variable"
read var2
if["$var1" = 1];
chmod +x b.sh
chmod +x de.sh
./b.sh
docker login -u  chandrashekark117 -p K.chandu@143
docker tag react:v1 chandrashekar117/prod
docker push chandrashekar117/prod:tagname
./de.sh
else
if["$var2" = 2];
chmod +x b.sh
chmod +x de.sh
./b.sh
sudo docker login -u  chandrashekark117 -p K.chandu@143
sudo docker tag react:v1 chandrashekar117/dev
sudo docker push chandrashekar117/dev:v1
./de.sh
fi
