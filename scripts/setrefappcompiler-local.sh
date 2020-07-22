#!/usr/bin/env bash

DIRECTORY=$(cd `dirname $0` && pwd)
PACKAGES="${DIRECTORY}/../.meteor/packages"
grep '^typescript$' "${PACKAGES}" >/dev/null && meteor remove typescript
grep '^refapp:meteor-typescript$' "${PACKAGES}" >/dev/null || meteor add refapp:meteor-typescript


PACKAGE_DIR="${DIRECTORY}/../packages"
mkdir -p "${PACKAGE_DIR}"

# Change to your own location of the refapp:meteor-typescript source
COMPILER_ROOT=~/Projects/new-meteor-typescript-compiler
ln -sf "${COMPILER_ROOT}/meteor-typescript" "${PACKAGE_DIR}/meteor-typescript"
ln -sf "${COMPILER_ROOT}/meteor-typescript-compiler" "${PACKAGE_DIR}/meteor-typescript-compiler"