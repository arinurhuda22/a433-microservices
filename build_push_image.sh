#!/bin/bash

# build Docker image dari Dockerfile dan memberikan tag 'item-app:v1' pada image tersebut.
docker build -t item-app:v1 .

# menampilkan daftar semua Docker image yang ada di host Docker saat ini.
docker images

# memberikan tag baru pada image yang telah dibangun sebelumnya, Image dengan tag 'item-app:v1' sekarang juga memiliki tag 'ghcr.io/arinurhuda22/item-app:v1'.
docker tag item-app:v1 ghcr.io/arinurhuda22/item-app:v1

# melakukan login ke GitHub Container Registry (GHCR) dengan username dan password yang disediakan. 
docker login --username arinurhuda22 --password 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 ghcr.io

# mengunggah image Docker dengan tag 'ghcr.io/arinurhuda22/item-app:v1' ke GitHub Container Registry.
docker push ghcr.io/arinurhuda22/item-app:v1