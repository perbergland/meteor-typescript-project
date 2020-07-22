#!/usr/bin/env bash
DIRECTORY=$(cd `dirname $0` && pwd)
PACKAGES="${DIRECTORY}/../.meteor/packages"

grep '^refapp:meteor-typescript$' "${PACKAGES}" >/dev/null && meteor remove refapp:meteor-typescript
grep '^typescript$' "${PACKAGES}" >/dev/null || meteor add typescript