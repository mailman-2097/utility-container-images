# Build 
```
# Converted to UBI since this is build
# Revert to Original 
docker buildx build -t custom-builder-ng -f ubi8/Dockerfile.ng.build .
docker buildx build -t custom-builder-node -f ubi8/Dockerfile.node.build .
docker buildx build -t custom-builder-php8 -f ubi8/Dockerfile.php8.build .
docker buildx build -t custom-builder-php7 -f ubi8/Dockerfile.php7.build .

```