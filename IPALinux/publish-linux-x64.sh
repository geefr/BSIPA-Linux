#!/usr/bin/env sh
buildDir=$(dirname $0)
dotnet publish /p:PublishProfile=${buildDir}/Properties/PublishProfiles/Linux64-bin.pubxml
#dotnet publish /p:PublishProfile=${buildDir}/Properties/PublishProfiles/Linux64-lib.pubxml

