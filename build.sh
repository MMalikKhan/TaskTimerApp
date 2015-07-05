#!/bin/bash

mono --runtime=v4.0 "tools/NuGet/nuget.exe" install FAKE -outputdirectory "packages" -excludeversion
mono --runtime=v4.0 packages/FAKE/tools/FAKE.exe build.fsx $@
