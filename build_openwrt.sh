#! /bin/bash

cp -R patch ./openwrt/patches
cp -R resources ./openwrt/resources

cd ./openwrt

sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/mediatek/filogic/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bcm53xx/image/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/omap/profiles/00-default.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/tegra/image/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/sunxi/image/cortexa7.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/sunxi/profiles/00-default.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/starfive/image/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ath79/image/generic-ubnt.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ath79/image/generic.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ath79/tiny/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ath79/generic/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ath79/mikrotik/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ath79/nand/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ramips/image/mt7620.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ramips/image/mt7621.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ramips/rt288x/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ramips/mt76x8/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ramips/mt7620/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ramips/rt305x/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ramips/rt3883/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ramips/mt7621/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/mvebu/image/cortexa9.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/rockchip/image/armv8.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ixp4xx/image/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bcm47xx/generic/profiles/105-Broadcom-none.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bcm47xx/generic/profiles/PS-1208MFG.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bcm47xx/generic/profiles/215-Broadcom-tg3-none.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bcm47xx/generic/profiles/225-Broadcom-bgmac-none.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bcm47xx/generic/profiles/205-Broadcom-b44-none.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bcm47xx/generic/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bcm47xx/mips74k/profiles/103-Broadcom-none.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bcm47xx/mips74k/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bcm47xx/legacy/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/mpc85xx/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/qualcommax/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/apm821xx/image/sata.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/apm821xx/nand/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/apm821xx/sata/profiles/00-default.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/kirkwood/image/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/archs38/generic/profiles/00-default.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/malta/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bcm27xx/image/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/bmips/image/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/mediatek/image/filogic.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/mediatek/mt7622/target.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/uml/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ipq806x/Makefile
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/lantiq/image/danube.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/lantiq/image/vr9.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/lantiq/image/xway_legacy.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/lantiq/image/tp-link.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/lantiq/image/ar9.mk
sed -i 's/wpad-basic-mbedtls/wpad-basic-openssl/g' ./target/linux/ipq40xx/Makefile

# GENERIC
sed -i 's/CONFIG_HZ=100/CONFIG_HZ=250/g' ./target/linux/generic/config-6.6
sed -i 's/# CONFIG_HZ_250 is not set/CONFIG_HZ_250=y/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_HZ_100=y/# CONFIG_HZ_100 is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_KUSER_HELPERS=y/# CONFIG_KUSER_HELPERS is not set/g' ./target/linux/generic/config-6.6
sed -i 's/# CONFIG_JUMP_LABEL is not set/CONFIG_JUMP_LABEL=y/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_WQ_POWER_EFFICIENT_DEFAULT=y/# CONFIG_WQ_POWER_EFFICIENT_DEFAULT is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_ISDN=y/# CONFIG_ISDN is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_BUG=y/# CONFIG_BUG is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_DEBUG_KERNEL=y/# CONFIG_DEBUG_KERNEL is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_EFI_PARTITION=y/# CONFIG_EFI_PARTITION is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_SWAP=y/# CONFIG_SWAP is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_MEMFD_CREATE=y/# CONFIG_MEMFD_CREATE is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_LOG_BUF_SHIFT=17/CONFIG_LOG_BUF_SHIFT=16/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_BLK_DEV_INITRD=y/# CONFIG_BLK_DEV_INITRD is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_ELFCORE=y/# CONFIG_ELFCORE is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_SHMEM=y/# CONFIG_SHMEM is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_EXT2_FS_XATTR=y/# CONFIG_EXT2_FS_XATTR is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_SCSI_PROC_FS=y/# CONFIG_SCSI_PROC_FS is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_ADVISE_SYSCALLS=y/# CONFIG_ADVISE_SYSCALLS is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_LTO_NONE=y/# CONFIG_LTO_NONE is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_PCI_QUIRKS=y/# CONFIG_PCI_QUIRKS is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_LIST_HARDENED=y/# CONFIG_LIST_HARDENED is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_JOLIET=y/# CONFIG_JOLIET is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_CRAMFS_BLOCKDEV=y/# CONFIG_CRAMFS_BLOCKDEV is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_CIFS_ALLOW_INSECURE_LEGACY=y/# CONFIG_CIFS_ALLOW_INSECURE_LEGACY is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_CARDBUS=y/# CONFIG_CARDBUS is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_ATA_SFF=y/# CONFIG_ATA_SFF is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_ATA_BMDMA=y/# CONFIG_ATA_BMDMA is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_CONSTRUCTORS=y/# CONFIG_CONSTRUCTORS is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_REISERFS_FS_XATTR=y/# CONFIG_REISERFS_FS_XATTR is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_TRACING_SUPPORT=y/# CONFIG_TRACING_SUPPORT is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_SND_VERBOSE_PROCFS=y/# CONFIG_SND_VERBOSE_PROCFS is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_TRACE_IRQFLAGS_SUPPORT=y/# CONFIG_TRACE_IRQFLAGS_SUPPORT is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_XEN_SCRUB_PAGES_DEFAULT=y/# CONFIG_XEN_SCRUB_PAGES_DEFAULT is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_IO_WQ=y/# CONFIG_IO_WQ is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_DEVPORT=y/# CONFIG_DEVPORT is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_IPW2100_MONITOR=y/# CONFIG_IPW2100_MONITOR is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_IPW2200_MONITOR=y/# CONFIG_IPW2200_MONITOR is not set/g' ./target/linux/generic/config-6.6
sed -i 's/CONFIG_GENERIC_PTDUMP=y/# CONFIG_GENERIC_PTDUMP is not set/g' ./target/linux/generic/config-6.6

sed -i 's/# CONFIG_DEBUG_INFO_REDUCED is not set/CONFIG_DEBUG_INFO_REDUCED=y/g' ./target/linux/*/config-6.6
sed -i 's/# CONFIG_DEBUG_INFO_REDUCED is not set/CONFIG_DEBUG_INFO_REDUCED=y/g' ./target/linux/*/*/config-6.6
sed -i 's/CONFIG_ALLOW_DEV_COREDUMP=y/# CONFIG_ALLOW_DEV_COREDUMP is not set/g' ./target/linux/*/config-6.6
sed -i 's/CONFIG_ALLOW_DEV_COREDUMP=y/# CONFIG_ALLOW_DEV_COREDUMP is not set/g' ./target/linux/*/*/config-6.6
sed -i 's/CONFIG_COREDUMP=y/# CONFIG_COREDUMP is not set/g' ./target/linux/*/config-6.6
sed -i 's/CONFIG_COREDUMP=y/# CONFIG_COREDUMP is not set/g' ./target/linux/*/*/config-6.6
sed -i 's/CONFIG_ELF_CORE=y/# CONFIG_ELF_CORE is not set/g' ./target/linux/*/config-6.6
sed -i 's/CONFIG_ELF_CORE=y/# CONFIG_ELF_CORE is not set/g' ./target/linux/*/*/config-6.6
sed -i 's/CONFIG_DEBUG_INFO=y/# CONFIG_DEBUG_INFO not set/g' ./target/linux/*/config-6.6
sed -i 's/CONFIG_DEBUG_INFO=y/# CONFIG_DEBUG_INFO is not set/g' ./target/linux/*/*/config-6.6
sed -i 's/CONFIG_LOCK_DEBUGGING_SUPPORT=y/# CONFIG_LOCK_DEBUGGING_SUPPORT is not set/g' ./target/linux/*/config-6.6
sed -i 's/CONFIG_LOCK_DEBUGGING_SUPPORT=y/# CONFIG_LOCK_DEBUGGING_SUPPORT is not set/g' ./target/linux/*/*/config-6.6
sed -i 's/CONFIG_MAGIC_SYSRQ=y/# CONFIG_MAGIC_SYSRQ is not set/g' ./target/linux/*/config-6.6
sed -i 's/CONFIG_MAGIC_SYSRQ=y/# CONFIG_MAGIC_SYSRQ is not set/g' ./target/linux/*/*/config-6.6

#ATH79
sed -i 's/CONFIG_NET_SELFTESTS=y/# CONFIG_NET_SELFTESTS is not set/' ./target/linux/ath79/config-6.6
echo CONFIG_NR_CPUS=1 >> ./target/linux/ath79/config-6.6

#RAMIPS
sed -i 's/CONFIG_DEBUG_PINCTRL=y/# CONFIG_DEBUG_PINCTRL is not set/' ./target/linux/ramips/*/config-6.6
sed -i 's/CONFIG_NET_SELFTESTS=y/# CONFIG_NET_SELFTESTS is not set/' ./target/linux/ramips/*/config-6.6

#FILOGIC
sed -i 's/CONFIG_FRAME_POINTER=y/# CONFIG_FRAME_POINTER is not set/' ./target/linux/mediatek/filogic/config-6.6
sed -i 's/# CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE is not set/CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE=y/' ./target/linux/mediatek/filogic/config-6.6
sed -i 's/CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE=y/# CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE is not set/' ./target/linux/mediatek/filogic/config-6.6
sed -i 's/CONFIG_CPU_FREQ_GOV_POWERSAVE=y/# CONFIG_CPU_FREQ_GOV_POWERSAVE is not set/' ./target/linux/mediatek/filogic/config-6.6
sed -i 's/CONFIG_CPU_FREQ_GOV_USERSPACE=y/# CONFIG_CPU_FREQ_GOV_USERSPACE is not set/' ./target/linux/mediatek/filogic/config-6.6
sed -i 's/CONFIG_CPU_FREQ_GOV_ONDEMAND=y/# CONFIG_CPU_FREQ_GOV_ONDEMAND is not set/' ./target/linux/mediatek/filogic/config-6.6
sed -i 's/CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y/# CONFIG_CPU_FREQ_GOV_CONSERVATIVE is not set/' ./target/linux/mediatek/filogic/config-6.6
sed -i 's/CONFIG_IRQ_TIME_ACCOUNTING=y/# CONFIG_IRQ_TIME_ACCOUNTING is not set/' ./target/linux/mediatek/filogic/config-6.6
sed -i 's/CONFIG_PERF_EVENTS=y/# CONFIG_PERF_EVENTS is not set/' ./target/linux/mediatek/filogic/config-6.6
sed -i 's/CONFIG_MAGIC_SYSRQ=y/# CONFIG_MAGIC_SYSRQ is not set/' ./target/linux/mediatek/filogic/config-6.6
sed -i 's/CONFIG_ATA=y/# CONFIG_ATA is not set/' ./target/linux/mediatek/filogic/config-6.6

#IPQ40XX
sed -i 's/CONFIG_CPU_FREQ_GOV_ONDEMAND=y/# CONFIG_CPU_FREQ_GOV_ONDEMAND is not set/' ./target/linux/ipq40xx/config-6.6
sed -i 's/CONFIG_GENERIC_BUG=y/# CONFIG_GENERIC_BUG is not set/' ./target/linux/ipq40xx/config-6.6
sed -i 's/CONFIG_DEBUG_MISC=y/# CCONFIG_DEBUG_MISC is not set/' ./target/linux/ipq40xx/config-6.6

#MPC85XX
sed -i 's/CONFIG_DEBUG_BUGVERBOSE=y/# CONFIG_DEBUG_BUGVERBOSE is not set/' ./target/linux/mpc85xx/config-6.6
sed -i 's/CONFIG_PCIEASPM_DEFAULT=y/# CONFIG_PCIEASPM_DEFAULT is not set/' ./target/linux/mpc85xx/config-6.6
sed -i 's/# CONFIG_PCIEASPM_PERFORMANCE is not set/CONFIG_PCIEASPM_PERFORMANCE=y/' ./target/linux/mpc85xx/config-6.6

for i in $(ls patches)
do
    echo Patching $i
    git apply --whitespace=nowarn patches/$i
done

./scripts/feeds update -a
./scripts/feeds install -a

# LuCI patch
sed -i 's| value="{{ entityencode(duser, true) }}"||' feeds/luci/modules/luci-base/ucode/template/sysauth.ut
sed -i "s|document.getElementsByName('luci_password')|document.getElementsByName('luci_username')|" feeds/luci/modules/luci-base/ucode/template/sysauth.ut
sed -i 's|type="password"|type="text"|' feeds/luci/themes/luci-theme-bootstrap/htdocs/luci-static/resources/view/bootstrap/sysauth.js
sed -i 's| value="{{ entityencode(duser, true) }}"||' feeds/luci/themes/luci-theme-bootstrap/ucode/template/themes/bootstrap/sysauth.ut
cp resources/cbi/*.gif feeds/luci/modules/luci-compat/htdocs/luci-static/resources/cbi/
cp resources/icons/* feeds/luci/modules/luci-base/htdocs/luci-static/resources/icons/
rm -rf feeds/packages/kernel/v4l2loopback

#Fix LTO fail packages
sed -iz 's/PKG_BUILD_PARALLEL:=1/PKG_BUILD_PARALLEL:=1\nPKG_BUILD_FLAGS:=no-lto/' ./feeds/packages/libs/libpfring/Makefile
sed -iz 's/PKG_BUILD_PARALLEL:=1/PKG_BUILD_PARALLEL:=1\nPKG_BUILD_FLAGS:=no-lto/' ./feeds/packages/net/xtables-addons/Makefile

# Remove USB packages from tp-link ath79
# sed -i 's/kmod-usb2 //g' ./target/linux/ath79/image/generic-tp-link.mk
# sed -i 's/kmod-usb-ledtrig-usbport //g' ./target/linux/ath79/image/generic-tp-link.mk
# sed -i 's/kmod-usb-net-rndis //g' ./target/linux/ath79/image/generic-tp-link.mk
# sed -i 's/kmod-usb-serial-option //g' ./target/linux/ath79/image/generic-tp-link.mk

# Use htt firmware from ct uses too much memory skip optimization
#sed -i 's/ath10k-firmware-qca9887-ct/ath10k-firmware-qca9887-ct-htt/g' ./target/linux/ath79/image/generic-tp-link.mk
#sed -i 's/ath10k-firmware-qca9888-ct/ath10k-firmware-qca9888-ct-htt/g' ./target/linux/ath79/image/generic-tp-link.mk
#sed -i 's/ath10k-firmware-qca988x-ct/ath10k-firmware-qca988x-ct-htt/g' ./target/linux/ath79/image/generic-tp-link.mk
#sed -i 's/ath10k-firmware-qca99x0-ct/ath10k-firmware-qca99x0-ct-htt/g' ./target/linux/ath79/image/generic-tp-link.mk

# Build non-performance critical system packages with Os
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/system/fwtool/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/system/ubox/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/system/opkg/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/system/mtd/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/system/procd/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/system/rpcd/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/system/ubus/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/system/uci/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/utils/uci/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/utils/lua/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/utils/busybox/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/network/utils/iwinfo/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/network/services/dropbear/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/network/services/uhttpd/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/network/config/swconfig/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/network/config/netifd/Makefile
#sed -iz 's/PKG_LICENSE_FILES:=/PKG_LICENSE_FILES:=\nTARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os/' ./package/network/config/firewall4/Makefile

echo CONFIG_PACKAGE_luci-app-https-dns-proxy=m >> .config
echo CONFIG_PACKAGE_luci-app-nlbwmon=m >> .config
echo CONFIG_PACKAGE_luci-app-sqm=m >> .config
echo CONFIG_PACKAGE_luci-app-openvpn=m >> .config
echo CONFIG_PACKAGE_luci-proto-wireguard=m >> .config

make defconfig

sed -i 's/# CONFIG_LUCI_SRCDIET is not set/CONFIG_LUCI_SRCDIET=y/' .config
sed -i "s|option enabled '0'|option enabled '1'|" ./feeds/packages/utils/irqbalance/files/irqbalance.config

# Fix and optimize unaligned instructions /sys/kernel/debug/mips/unaligned_instructions
sed -i 's/((packed, aligned(2)))/((aligned(2)))/'g ./target/linux/ath79/patches-6.6/900-unaligned_access_hacks.patch
sed -i 's/((packed, aligned(2)))/((aligned(2)))/'g ./package/kernel/shortcut-fe/shortcut-fe/patches/0005-set-packed_aligned.patch
cp ./target/linux/ath79/patches-6.6/900-unaligned_access_hacks.patch ./target/linux/ramips/patches-6.6/
