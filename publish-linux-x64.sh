#!/usr/bin/env sh
buildDir=$(dirname $0)
dotnet publish /p:PublishProfile=${buildDir}/Properties/PublishProfiles/Linux64-bin.pubxml
chmod +x bin/Release/net5.0/publish-linux64-bin/IPA-Minimal
#dotnet publish /p:PublishProfile=${buildDir}/Properties/PublishProfiles/Linux64-lib.pubxml

