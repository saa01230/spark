# clone Repository
git clone https://github.com/saa01230/spark.git

# build & pack(C#)
./build.sh -c Release --pack

# build (Java)
(src/scala)
mvn clean package

# push to Local feed
(mkdir /feeds)
dotnet nuget add source /feeds
dotnet nuget push <.nupkg> -s /feeds

# add package from Local feed
dotnet add package Microsoft.Spark -v 1.11.1-<> -s /feeds