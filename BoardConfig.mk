#
# Copyright 2014 The Android Open Source Project
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

# inherit from common cvtlp-common
-include device/asus/cvtlp-common/BoardConfigCommon.mk

#cmhw
BOARD_HARDWARE_CLASS := device/asus/T00F/cmhw

# Partitions
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5129031680 ##5129048064 - 16384
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912 # 536870912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1363148800
BOARD_FLASH_BLOCK_SIZE := 131072

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/asus/clovertrail
TARGET_KERNEL_ARCH := x86
BOARD_KERNEL_IMAGE_NAME := bzImage
TARGET_KERNEL_CONFIG := cyanogenmod_a500cg_defconfig

# Kernel cmdline
BOARD_KERNEL_CMDLINE := init=/init pci=noearly loglevel=0 kmemleak=off androidboot.bootmedia=sdcard vmalloc=256M androidboot.hardware=redhookbay watchdog.watchdog_thresh=60 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789 snd_pcm.maximum_substreams=8 ip=50.0.0.2:50.0.0.1::255.255.255.0::usb0:on debug_locks=0
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# SELinux
BOARD_SEPOLICY_DIRS += device/asus/T00F/sepolicy

# Use the non-open-source parts, if they're present
-include vendor/asus/T00F/BoardConfigVendor.mk
