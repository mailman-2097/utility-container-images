# Build 
```
# Converted to UBI since this is build
# Revert to Original 
docker buildx build -t sinsw/t-reign-builder-ng -f resources/k8s/Dockerfile.ng.build .
docker buildx build -t sinsw/t-reign-builder-node -f resources/k8s/Dockerfile.node.build .
docker buildx build -t sinsw/t-reign-builder-php8 -f resources/k8s/Dockerfile.php8.build .
docker buildx build -t sinsw/t-reign-builder-php7 -f resources/k8s/Dockerfile.php7.build .

```