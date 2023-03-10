sudo apt-get purge mongodb*
apt update -y && apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt upgrade -y && sudo apt-get install mongodb -y
sudo apt list mongodb-org-database
mongoimport --db noticias --collection noticias --file noticias.json
