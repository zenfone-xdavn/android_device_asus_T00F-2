#!/bin/sh

set -e

export DEVICE=T00F
export VENDOR=asus
./../../$VENDOR/cvtlp-common/setup-makefiles.sh $@
