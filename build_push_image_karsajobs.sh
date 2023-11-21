#!/bin/bash

#build image docker 
docker build -t ghcr.io/arinurhuda22/karsajobs:latest . 
#login github container registry 
docker login --username arinurhuda22 --password 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 ghcr.io 
#push image ke github container registry
docker push ghcr.io/arinurhuda22/karsajobs:latest