aws() {
  docker run --rm -it \
    --mount type=bind,source="$HOME"/.aws,destination=/root/.aws,readonly \
    --mount type=bind,source="$(pwd)",destination=/data,consistency=cached \
    -e AWS_PROFILE \
    -e AWS_REGION \
    kszarek/aws "$@"
}
