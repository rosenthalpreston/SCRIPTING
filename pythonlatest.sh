#!/bin/bash

# Ici MAJ du système
sudo yum update

# Install des dépendances
sudo yum install gcc openssl-devel bzip2-devel libffi-devel -y

# Installation wget 
sudo yum install wget -y

# Téléchargement de Python 3.9.7
wget https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tgz

# Extraction du fichier compressé
tar -xf Python-3.9.7.tgz

# Change directory vers le répertoire Python-3.9.7
cd Python-3.9.7

# Configuration du processus d'installation
./configure --enable-optimizations

# Compiler Python
make

# Installer Python
sudo make install

# Vérifier la version installée de Python
python3 --version
