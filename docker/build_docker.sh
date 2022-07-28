#!/bin/bash

echo "Build the docker"

if [[ $1 = "" ]] ; then
  echo "No tag argument, using default setting"
  tag="rkrispin/ggplot2_workshop:ver.0.1.0"
  echo "Tag was set as $tag"
else
  tag=$1
fi


docker build . --progress=plain -t $tag

if [[ $? = 0 ]] ; then
echo "Pushing docker..."
docker push $tag
else
echo "Docker build failed"
fi