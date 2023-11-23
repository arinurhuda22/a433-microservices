docker build -t ghcr.io/arinurhuda22/shipping-service:latest .
docker login --username arinurhuda22 --password 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 ghcr.io
docker push ghcr.io/arinurhuda22/shipping-service:latest