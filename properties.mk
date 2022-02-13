#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Build Fingerprint
BUILD_FINGERPRINT := "xiaomi/wayne/wayne:8.1.0/OPM1.171019.011/V9.5.11.0.ODCCNFA:user/release-keys"

# Adaptive Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qcom.ad=1 \
    ro.qcom.ad.sensortype=2

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.imglib.usefdlite=1 \
    persist.vendor.camera.isp.clock.optmz=0 \
    persist.vendor.camera.isp.turbo=1 \
    persist.vendor.camera.linkpreview=0 \
    persist.vendor.camera.preview.ubwc=0 \
    persist.vendor.camera.stats.test=0 \
    vendor.video.disable.ubwc=1

# Dual SIM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.iwlan.enable=true \
    persist.vendor.radio.data_con_rprt=1
