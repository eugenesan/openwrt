#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/RD88F6281-A
  NAME:=Marvell RD88F6281-A
  PACKAGES:= \
	kmod-mmc kmod-mvsdio kmod-usb2 kmod-usb-storage \
	kmod-rtc-marvell \
	kmod-bridge kmod-mwl8k \
	kmod-ata-core kmod-ata-marvell-sata \
	kmod-thermal kmod-thermal-kirkwood \
	uboot-envtools
endef

define Profile/RD88F6281-A/Description
 Package set compatible with Marvell RD88F6281-A board in DT mode.
endef

RD88F6281-A_UBIFS_OPTS:="-m 2048 -e 126KiB -c 4096"
RD88F6281-A_UBI_OPTS:="-m 2048 -p 128KiB -s 512"

$(eval $(call Profile,RD88F6281-A))

define Profile/RD88F6281
  NAME:=Marvell RD88F6281
  PACKAGES:= \
	kmod-mmc kmod-mvsdio kmod-usb2 kmod-usb-storage \
	kmod-rtc-marvell \
	kmod-bridge kmod-mwl8k \
	kmod-ata-core kmod-ata-marvell-sata \
	kmod-thermal kmod-thermal-kirkwood \
	uboot-envtools
endef

define Profile/RD88F6281/Description
 Package set compatible with Marvell RD88F6281 board in DT mode.
endef

RD88F6281_UBIFS_OPTS:="-m 2048 -e 126KiB -c 4096"
RD88F6281_UBI_OPTS:="-m 2048 -p 128KiB -s 512"

$(eval $(call Profile,RD88F6281))

define Profile/RD88F6281-LEGACY
  NAME:=Marvell RD88F6281/RD88F6281-A in legacy mode
  PACKAGES:= \
	kmod-mmc kmod-mvsdio kmod-usb2 kmod-usb-storage \
	kmod-rtc-marvell \
	kmod-bridge kmod-mwl8k \
	kmod-ata-core kmod-ata-marvell-sata \
	kmod-thermal kmod-thermal-kirkwood \
	uboot-envtools
endef

define Profile/RD88F6281-LEGACY/Description
 Package set compatible with Marvell RD88F6281/RD88F6281-A boards in legacy mode.
endef

RD88F6281-LEGACY_UBIFS_OPTS:="-m 2048 -e 126KiB -c 4096"
RD88F6281-LEGACY_UBI_OPTS:="-m 2048 -p 128KiB -s 512"

KERNELNAME:="zImage"

$(eval $(call Profile,RD88F6281-LEGACY))
