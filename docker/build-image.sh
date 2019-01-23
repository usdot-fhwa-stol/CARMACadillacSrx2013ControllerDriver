#!/bin/bash

#  Copyright (C) 2018-2019 LEIDOS.
# 
#  Licensed under the Apache License, Version 2.0 (the "License"); you may not
#  use this file except in compliance with the License. You may obtain a copy of
#  the License at
# 
#  http://www.apache.org/licenses/LICENSE-2.0
# 
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#  License for the specific language governing permissions and limitations under
#  the License.

USERNAME=usdotfhwastol
IMAGE=carma-cadillac-srx-2013-controller-driver

echo ""
echo "##### CARMACadillacSrx2013ControllerDriver Docker Image Build Script #####"
echo ""

if [[ -z "$1" ]]; then
    TAG=latest
else
    TAG="$1"
fi

echo "Building docker image for CARMACadillacSrx2013ControllerDriver"
echo "Final image name: $USERNAME/$IMAGE:$TAG"

cd "$(dirname "$0")"
cd ..

docker build -t $USERNAME/$IMAGE:$TAG .
docker tag $USERNAME/$IMAGE:$TAG $USERNAME/$IMAGE:latest

echo ""
echo "##### CARMACadillacSrx2013ControllerDriver Docker Image Build Done! #####"
