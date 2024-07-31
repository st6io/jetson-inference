#!/bin/bash

build_dir="$(dirname "$0")"/../build

exclude_artifacts=('/usr/local/share' '/usr/local/include')

exclude_options=()
for ext in "${exclude_artifacts[@]}"; do
    exclude_options+=("-e "$ext"")
done

include_files="$(cat $build_dir/install_manifest.txt | grep -v ${exclude_options[@]})"

zip "$build_dir/jetson-inference.zip" $include_files

