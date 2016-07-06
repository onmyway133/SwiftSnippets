#!/bin/bash

set -euo pipefail

VERSION=0.1.0
EXTENSION=codesnippet
NAME="SwiftSnippets-${VERSION}"
DOWNLOAD_URI=https://github.com/hyperoslo/SwiftSnippets/archive/${VERSION}.tar.gz
DIR="${HOME}/Library/Developer/Xcode/UserData/CodeSnippets"

mkdir -p "${DIR}"
curl -L $DOWNLOAD_URI | tar xvz -C "${DIR}";cp -r "${DIR}/${NAME}/Snippets/" "${DIR}"