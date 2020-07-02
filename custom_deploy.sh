#!/usr/bin/env bash
cp -r `pwd`/artifacts/bin/Microsoft.Spark.Worker/Release/netcoreapp3.1 /Microsoft.Spark.Worker
cp `pwd`/src/scala/microsoft-spark-2.4.x/target/microsoft-spark-2.4.x-3.33.3.jar /
mkdir /feeds
dotnet nuget add source /feeds
dotnet nuget push `pwd`/artifacts/packages/Release/Shipping/Microsoft.Spark.3.33.3-dev.20352.1.nupkg -s /feeds
#dotnet add package Microsoft.Spark -v 3.33.3-dev.20352.1 -s /feeds