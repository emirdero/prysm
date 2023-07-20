bazel build //beacon-chain:image_bundle --config=release
bazel build //validator:image_bundle --config=release
bazel build cmd/beacon-chain:image_bundle.tar
bazel build cmd/validator:image_bundle.tar  
docker load -i bazel-bin/cmd/beacon-chain/image_bundle.tar
docker load -i bazel-bin/cmd/validator/image_bundle.tar