set -e
docker pull alpine
docker build --progress=plain -t local-dcycle-gh-cli-image .

docker run --rm local-dcycle-gh-cli-image
