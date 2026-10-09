#!/usr/bin/env bash

set -ex

set -o pipefail && xcodebuild -project alt-tab-macos.xcodeproj -scheme Release -derivedDataPath DerivedData \
    MARKETING_VERSION="v11.9.0" \
    CURRENT_PROJECT_VERSION="20261009" \
    | scripts/xcbeautify
file "$BUILD_DIR/$XCODE_BUILD_PATH/$APP_NAME.app/Contents/MacOS/$APP_NAME"
