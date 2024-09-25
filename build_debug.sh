#! /bin/bash

OPENWRT_ISA=$(grep "OPENWRT_ISA:" $@ | awk -F ': '  '{print $2}')
OPENWRT_ARCH=$(grep "OPENWRT_ARCH:" $@ | awk -F ': '  '{print $2}')
OPENWRT_TARGET=$(grep "OPENWRT_TARGET:" $@ | awk -F ': '  '{print $2}')
OPENWRT_SUBTARGET=$(grep "OPENWRT_SUBTARGET:" $@ | awk -F ': '  '{print $2}')
OPENWRT_DEVICE_MODEL=$(grep "OPENWRT_DEVICE_MODEL:" $@ | awk -F ': '  '{print $2}')
OPENWRT_CPU_CFLAG_OPTIMIZATION=$(grep "OPENWRT_CPU_CFLAG_OPTIMIZATION:" $@ | awk -F ': '  '{print $2}')
OPENWRT_CPU_CFLAG_ARCH=$(grep "OPENWRT_CPU_CFLAG_ARCH:" $@ | awk -F ': '  '{print $2}')
OPENWRT_CPU_CFLAG_ARCH_OPTIMIZATION=$(grep "OPENWRT_CPU_CFLAG_ARCH_OPTIMIZATION:" $@ | awk -F ': '  '{print $2}')
OPENWRT_CPU_NUMPROC=$(grep "OPENWRT_CPU_NUMPROC:" $@ | awk -F ': '  '{print $2}')

git clone --depth=1 https://github.com/openwrt/openwrt.git

sed -i 's/git.openwrt.org\/feed/github.com\/openwrt/g' ./openwrt/feeds.conf.default
sed -i 's/git.openwrt.org\/feed/github.com\/openwrt/g' ./openwrt/feeds.conf.default
sed -i 's/git.openwrt.org\/project/github.com\/openwrt/g' ./openwrt/feeds.conf.default

cp -R patch/ backup/
rm patch/0001-target-optimize-all.patch
rm patch/0009-config-kernel-sym-all.patch
rm patch/0021-disable-debug-depends-all.patch
find patch/ -type f -not -name "*-all.patch" -not -name "*-$OPENWRT_ISA.patch" -not -name "*-$OPENWRT_DEVICE_MODEL.patch" -exec rm {} \;

sed -i "s/openwrt_target/$OPENWRT_TARGET/" patch/0002-set-default-target-all.patch
sed -i "s/openwrt_subtarget/$OPENWRT_SUBTARGET/g" patch/0002-set-default-target-all.patch
sed -i "s/openwrt_device_model_config/$OPENWRT_DEVICE_MODEL/" patch/0002-set-default-target-all.patch
sed -i "s/$OPENWRT_CPU_CFLAG_ARCH/$OPENWRT_CPU_CFLAG_ARCH_OPTIMIZATION/" openwrt/include/target.mk
sed -i "s/-mno-branch-likely/$OPENWRT_CPU_CFLAG_OPTIMIZATION/" openwrt/include/target.mk
sed -i "s/OPENWRT_CPU_CFLAG_ARCH_OPTIMIZATION/$OPENWRT_CPU_CFLAG_ARCH_OPTIMIZATION/" patch/0025-musl-cflags-*.patch
sed -i "s/OPENWRT_CPU_CFLAG_OPTIMIZATION/$OPENWRT_CPU_CFLAG_OPTIMIZATION/" patch/0025-musl-cflags-*.patch
sed -i 's/-mno-branch-likely/'"$OPENWRT_CPU_CFLAG_OPTIMIZATION"'/g' openwrt/target/linux/generic/pending-6.6/302-mips_no_branch_likely.patch
sed -i 's/-march=mips32r2 -mtune=34kc/'"$OPENWRT_CPU_CFLAG_ARCH_OPTIMIZATION"'/g' openwrt/target/linux/generic/pending-6.6/308-mips32r2_tune.patch
sed -i "s/CONFIG_NR_CPUS=4/CONFIG_NR_CPUS=$OPENWRT_CPU_NUMPROC/" openwrt/target/linux/mediatek/filogic/config-6.6

if [[ "$OPENWRT_CPU_NUMPROC" -gt 1 ]]
then
	sed -i 's|libustream-openssl|libustream-openssl irqbalance|' patch/0001-target-optimize-all.patch
	echo "CONFIG_SKB_RECYCLER=y" >> openwrt/target/linux/generic/config-6.6
	echo "CONFIG_SKB_RECYCLER_MULTI_CPU=y" >> openwrt/target/linux/generic/config-6.6
	echo "CONFIG_SKB_RECYCLER_PREALLOC=y" >> openwrt/target/linux/generic/config-6.6
	echo "CONFIG_SKB_RECYCLE_MAX_PREALLOC_SKBS=16384" >> openwrt/target/linux/generic/config-6.6
	echo "CONFIG_SKB_RECYCLE_SIZE=2304" >> openwrt/target/linux/generic/config-6.6
	echo "# CONFIG_SKB_FAST_RECYCLABLE_DEBUG_ENABLE is not set" >> openwrt/target/linux/generic/config-6.6
else
	echo "CONFIG_SKB_RECYCLER=y" >> openwrt/target/linux/generic/config-6.6
	echo "# CONFIG_SKB_RECYCLER_MULTI_CPU is not set" >> openwrt/target/linux/generic/config-6.6
	echo "# CONFIG_SKB_RECYCLER_PREALLOC is not set" >> openwrt/target/linux/generic/config-6.6
	echo "CONFIG_SKB_RECYCLE_SIZE=2304" >> openwrt/target/linux/generic/config-6.6
	echo "# CONFIG_SKB_FAST_RECYCLABLE_DEBUG_ENABLE is not set" >> openwrt/target/linux/generic/config-6.6
fi

# Replace CT firmware with stock ath10k
sed -i 's/kmod-ath10k-ct[-a-z]*/kmod-ath10k/g' openwrt/target/linux/*/image/*.mk
sed -i 's/\(ath10k-firmware[-a-z0-9]*\)-ct/\1/g' openwrt/target/linux/*/image/*.mk
sed -i 's/kmod-ath10k-ct[-a-z]*/kmod-ath10k/g' openwrt/target/linux/*/Makefile
sed -i 's/\(ath10k-firmware[-a-z0-9]*\)-ct/\1/g' openwrt/target/linux/*/Makefile

./build_openwrt.sh

if [[ "$OPENWRT_ISA" == "arm" ]]
then
	sed -i 's/= -Os -pipe/= -Os -pipe '"$OPENWRT_CPU_CFLAG_ARCH_OPTIMIZATION"'/' openwrt/include/target.mk
fi

rm -rf patch/
mv backup/ patch

ln -s ~/Downloads/dl openwrt/dl
