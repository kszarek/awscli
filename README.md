# awscli
This repo triggers auto-build and push images to dockerhub.com/u/kszarek/aws.

An AWS CLI toolbox in container to use on the desktop.

## Usage

```
docker run --rm -it \
  --mount type=bind,source="$HOME"/.aws,destination=/root/.aws,readonly \
  --mount type=bind,source="$(pwd)",destination=/data,consistency=cached \
  -e AWS_PROFILE \
  -e AWS_REGION \
  kszarek/aws
```
