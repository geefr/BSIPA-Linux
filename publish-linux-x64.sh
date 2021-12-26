#!/usr/bin/env sh
buildDir=$(dirname $0)

# Binary version
dotnet publish ${buildDir}/IPA-bin/IPA-bin.csproj -c Release -f net6.0 --output ${buildDir}/bin/Release/net6.0/publish-linux64-bin -p:PublishSingleFile=true -r linux-x64 --self-contained true
chmod +x ${buildDir}/bin/Release/net6.0/publish-linux64-bin/IPA-Minimal

# Library version
dotnet publish ${buildDir}/IPA-lib/IPA-lib.csproj -c Release -f net6.0 --output ${buildDir}/bin/Release/net6.0/publish-linux64-lib -r linux-x64 --self-contained true

