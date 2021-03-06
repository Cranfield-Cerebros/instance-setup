#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install make gcc
wget https://sourceforge.net/projects/openfoam/files/v2012/OpenFOAM-v2012-windows10.tgz
sudo tar -xvzf  OpenFOAM-v2012-windows10.tgz -C /opt/
sudo chown -R $USER /opt/OpenFOAM
echo "source /opt/OpenFOAM/OpenFOAM-v2012/etc/bashrc" >> ~/.bashrc
source $HOME/.bashrc
cd /opt/OpenFOAM/OpenFOAM-v2012/etc
rm controlDict
git clone https://github.com/Cranfield-Cerebros/DisableVerbose
mv DisableVerbose/controlDict .
sudo apt-get install default-libmysqlclient-dev libmysqlclient-dev
cd
git clone https://github.com/Cranfield-Cerebros/OpenFOAMBasic
git clone https://github.com/Cranfield-Cerebros/OpenFOAMBasic OpenFOAMBasic2
cd OpenFOAMBasic
git clone https://github.com/Cranfield-Cerebros/mesh
git clone https://github.com/Cranfield-Cerebros/Cerberus-head1
cd Cerberus-head1/src
make
cd ../../../OpenFOAMBasic2
git clone https://github.com/Cranfield-Cerebros/mesh
git clone https://github.com/Cranfield-Cerebros/Cerberus-head1
cd Cerberus-head1/src
make
cd 
