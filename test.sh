set -e
docker pull ubuntu
docker build -t local-dcycle-gh-cli-image .

docker run --rm dcycle/gh-cli:1
