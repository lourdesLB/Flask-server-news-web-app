#!/bin/bash
# linuxcapable.com/es/how-to-install-flask-on-ubuntu-20-04/

# Actualizar Ubuntu
echo "\n----Actualizando ubuntu"
sudo apt update -y && sudo apt upgrade -y

# Instalar python
echo "---Instalando python"
sudo apt install python3 -y
sudo apt install build-essential python3-pip libffi-dev python3-dev python3-setuptools libssl-dev -y
sudo apt install python3-pymongo -y

# Instalar flask
echo "--Instalando flask"
pip3 install flask
python3 -m flask --version
