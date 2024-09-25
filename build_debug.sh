#! /bin/bash

OPENWRT_TARGET=$(grep "OPENWRT_TARGET:" $@ | awk -F ': '  '{print $2}')
OPENWRT_SUBTARGET=$(grep "OPENWRT_SUBTARGET:" $@ | awk -F ': '  '{print $2}')
OPENWRT_DEVICE_MODEL=$(grep "OPENWRT_DEVICE_MODEL:" $@ | awk -F ': '  '{print $2}')

git clone https://github.com/openwrt/openwrt.git
cd openwrt
git checkout master
cd ..

sed -i 's/git.openwrt.org\/feed/github.com\/openwrt/g' ./openwrt/feeds.conf.default
sed -i 's/git.openwrt.org\/feed/github.com\/openwrt/g' ./openwrt/feeds.conf.default
sed -i 's/git.openwrt.org\/project/github.com\/openwrt/g' ./openwrt/feeds.conf.default

sed -i 's|default TARGET_ath79|default TARGET_'"$OPENWRT_TARGET"'|' ./openwrt/scripts/target-metadata.pl
sed -zi 's|prompt "Subtarget" if HAS_SUBTARGETS|prompt "Subtarget" if HAS_SUBTARGETS\n\tdefault TARGET_'"$OPENWRT_SUBTARGET"'|g' ./openwrt/scripts/target-metadata.pl
sed -i 's|default TARGET_MULTI_PROFILE if BUILDBOT|default TARGET_'"$OPENWRT_SUBTARGET"'_DEVICE_'"$OPENWRT_DEVICE_MODEL"'|' ./openwrt/scripts/target-metadata.pl
sed -i 's/netifd/netifd luci/' ./openwrt/include/target.mk

ln -s ~/Downloads/dl openwrt/dl

cd openwrt
./scripts/feeds update -a
./scripts/feeds install -a
make defconfig
