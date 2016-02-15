#!/bin/bash
set -e
set -x

temp_dir="$(mktemp -d -t codesigndoc)"

cd "$temp_dir"

curl -sfL https://github.com/bitrise-tools/codesigndoc/releases/download/0.9.7/codesigndoc-Darwin-x86_64 > ./codesigndoc
chmod +x ./codesigndoc
./codesigndoc scan
