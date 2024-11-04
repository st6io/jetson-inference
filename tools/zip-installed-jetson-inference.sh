#!/bin/bash

build_dir="$(dirname "$0")"/../build

include_files="$(cat $build_dir/install_manifest.txt)"

zip "$build_dir/jetson-inference.zip" $include_files
