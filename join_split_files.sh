#!/bin/bash

cat system/framework/arm/boot.oat.* 2>/dev/null >> system/framework/arm/boot.oat
rm -f system/framework/arm/boot.oat.* 2>/dev/null
cat system/app/Maps/oat/arm/Maps.odex.* 2>/dev/null >> system/app/Maps/oat/arm/Maps.odex
rm -f system/app/Maps/oat/arm/Maps.odex.* 2>/dev/null
cat system/priv-app/GmsCore/oat/arm/GmsCore.odex.* 2>/dev/null >> system/priv-app/GmsCore/oat/arm/GmsCore.odex
rm -f system/priv-app/GmsCore/oat/arm/GmsCore.odex.* 2>/dev/null
