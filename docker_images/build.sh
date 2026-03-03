VERSION=${1:-v0.0.1}
podman build . --no-cache --file base_dl_cuda128.dockerfile --tag base_dl_cuda128:$VERSION