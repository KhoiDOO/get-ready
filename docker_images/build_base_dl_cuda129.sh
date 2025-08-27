VERSION=${1:-v0.0.1}
docker build . --file base_dl_cuda129.dockerfile --tag base_dl_cuda129:$VERSION