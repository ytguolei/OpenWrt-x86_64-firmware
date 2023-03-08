#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/DEPENDS:=+libnl-tiny +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl/DEPENDS:=+libnl-tiny +libelf +libcap +(PACKAGE_devlink||PACKAGE_rdma):libmnl/g' package/network/utils/iproute2/Makefile
sed -i 's/DEPENDS:=+kmod-sched-core +libxtables +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl/DEPENDS:=+kmod-sched-core +libxtables +libelf +libcap +(PACKAGE_devlink||PACKAGE_rdma):libmnl/g' package/network/utils/iproute2/Makefile
