#

JARFILE="`pwd`/src/scala/microsoft-spark-2.4.x/target/microsoft-spark-2.4.x-3.33.3.jar"
PACKAGE="`pwd`/artifacts/packages/Release"
WORKER="`pwd`/artifacts/bin/Microsoft.Spark.Worker/Release/netcoreapp3.1"

if [ ! -f ${JARFILE} ]; then
    docker run --rm -it -v `pwd`:/spark -w=/spark/src/scala maven:3.6.3-jdk-8 mvn clean package
fi

if [ ! -d ${PACKAGE} -o ! -d ${WORKER} ]; then
    docker run --rm -it -v `pwd`:/spark -w=/spark mcr.microsoft.com/dotnet/core/sdk:3.1-bionic ./build.sh -c Release --pack
fi