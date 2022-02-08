#! /usr/bin/env bash
#
# Author: oren12321 <oren12321@gmail.com>
#
# Description: creaet Jetson base image tarball.
#
#/ Usage: ./create_image_tarball.sh
#/

#{{{ Bash settings
set -eEuo pipefail
#}}}

pushd ./utils
source ./setup_env.sh && \
./make_rootfs.sh && \
./customize_rootfs.sh && \
./apply_bsp.sh && \
./pack_to_tbz2.sh
popd

