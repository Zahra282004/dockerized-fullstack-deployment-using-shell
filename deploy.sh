#!/bin/bash 
set -e

#CLONING THE APP
function Cloning(){
        if [[ -d django-notes-app ]]; then
                echo "exists already"
                return 0
        else
                git clone https://github.com/LondheShubham153/django-notes-app.git
                echo "done Cloning"
        fi
}

#INSTALLING DEPENDENCIES
function Installing(){
        sudo apt-get update
        sudo apt-get install -y docker.io nginx docker-compose
        echo "done Installing"

}

#ENABLE DOCKER
function Enable(){
        sudo chown "$USER" /var/run/docker.sock
        #sudo systemctl start docker nginx
        #sudo systemctl enable docker nginx
        echo "done Enabling"
}

#DEPLOY THE APP
function Deploy(){
        cd django-notes-app
        docker build -t notes-app . && docker-compose up -d
        echo "done Deploying"
}

if ! Cloning;then
        exit 1
fi
if ! Installing; then
        exit 1
fi
if ! Enable; then
        exit 1
fi
if ! Deploy; then
        exit 1
fi
