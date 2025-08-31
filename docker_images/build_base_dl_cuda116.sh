VERSION=${1:-v0.0.1}
docker build . --file base_dl_cuda116.dockerfile --tag kohido/base_dl_cuda116:$VERSION