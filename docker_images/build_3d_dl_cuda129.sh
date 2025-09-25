VERSION=${1:-v0.0.1}
docker build . --file 3d_dl_cuda129.dockerfile --tag kohido/3d_dl_cuda129:$VERSION
