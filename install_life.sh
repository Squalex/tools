#!/bin/bash

# Basic
sudo apt-get -y install git
sudo apt-get -y install python3
sudo apt-get -y install python3-pip

sudo apt-get -y install vim

# Life Project
cd ~ 
if [ ! -d "life" ]; then 
git clone https://github.com/Squalex/life.git 
fi

# Pip install
pip3 install --upgrade pip
pip3 install --user virtualenv
pip3 install --user virtualenvwrapper

# VirtualEnvWrapper (Only once)
echo 'export WORKON_HOME=$HOME/.virtualenvs' >> ~/.bashrc
export WORKON_HOME=$HOME/.virtualenvs
echo 'export PROJECT_HOME=$HOME/life' >> ~/.bashrc
export PROJECT_HOME=$HOME/life
echo 'export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3' >> ~/.bashrc
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
echo 'export VIRTUALENVWRAPPER_VIRTUALENV=~/.local/bin/virtualenv' >> ~/.bashrc
export VIRTUALENVWRAPPER_VIRTUALENV=~/.local/bin/virtualenv
echo 'export VIRTUALENVWRAPPER_SCRIPT=~/.local/bin/virtualenvwrapper.sh' >> ~/.bashrc
export VIRTUALENVWRAPPER_SCRIPT=~/.local/bin/virtualenvwrapper.sh
echo 'source ~/.local/bin/virtualenvwrapper_lazy.sh' >> ~/.bashrc
source ~/.local/bin/virtualenvwrapper_lazy.sh


# Database - PostgreSQL
sudo apt-get -y install libpq-dev

# Virtual Environment Set Up
workon
mkvirtualenv django
workon django
cd ~/life
pip3 install -r requirements.txt

