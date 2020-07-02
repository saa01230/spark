#!/usr/bin/env bash
docker run --rm -it -v `pwd`:/spark -w=/spark/src/scala maven:3.6.3-jdk-8 mvn clean package
docker run --rm -it -v `pwd`:/spark -w=/spark mcr.microsoft.com/dotnet/core/sdk:3.1-bionic ./build.sh -c Release --pack