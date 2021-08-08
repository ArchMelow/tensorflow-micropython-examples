# Copyright 2021 The TensorFlow Micropython Examples rs. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================
#
# Tests the microcontroller code for esp32 platform

set -e

apt-get update && apt-get install -y gcc-mingw-w64 g++-mingw-w64

BASE_DIR=/opt/tflite-micro-micropython

cd $BASE_DIR/tensorflow

make -f tensorflow/lite/micro/tools/make/Makefile clean

rm -rf tensorflow/lite/micro/tools/make/downloads

make -f tensorflow/lite/micro/tools/make/Makefile BUILD_TYPE=debug TARGET_TOOLCHAIN_PREFIX=i686-w64-mingw32-

cp  tensorflow/lite/micro/tools/make/gen/linux_x86_64_debug/lib/libtensorflow-microlite.a $BASE_DIR/lib

echo "ls $BASE_DIR/lib"
ls $BASE_DIR/lib



