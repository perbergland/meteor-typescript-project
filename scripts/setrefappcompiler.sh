#!/usr/bin/env bash
DIRECTORY=$(cd `dirname $0` && pwd)
PACKAGES="${DIRECTORY}/../.meteor/packages"

grep '^typescript$' "${PACKAGES}" >/dev/null && meteor remove typescript
grep '^refapp:meteor-typescript$' "${PACKAGES}" >/dev/null || meteor add refapp:meteor-typescript

PACKAGE_DIR="${DIRECTORY}/../packages"
RMRESULT=$(rm -f "${PACKAGE_DIR}/meteor-typescript"*)