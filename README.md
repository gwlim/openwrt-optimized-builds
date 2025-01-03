**English**

# openwrt-optimized-builds

Opensource OpenWrt snapshot firmwares with performance optimizations and SFE build by github runners

- Routers require minimium 64MB RAM/8MB FLASH

Builds with all kmods

Supports the following platforms:

- QUALCOMM ATHEROS/ATH79 (MIPS32R2)
- MEDIATEK/RAMIPS (MIPS32R2)
- MEDIATEK/FILOGIC (ARMv8)
- QUALCOMM/IPQ401X (ARMv7)

## Getting Started

![Enable SFE](https://raw.githubusercontent.com/gwlim/openwrt-optimized-builds/refs/heads/master/getting_started.png "Enable Shortcut-FE")

## Debugging

### Show connection manager

```
root@OpenWrt:~# ecm_dump.sh
```

### Show offloaded ipv4 connections

```
root@OpenWrt:~# dev_num=$(cat /sys/sfe_ipv4/debug_dev) && mknod /dev/sfe_ipv4 c $dev_num 0 && cat /dev/sfe_ipv4
```

### Show offloaded ipv6 connections

```
root@OpenWrt:~# dev_num=$(cat /sys/sfe_ipv6/debug_dev) && mknod /dev/sfe_ipv6 c $dev_num 0 && cat /dev/sfe_ipv6
```

Open an issue if you want a build for a particular openwrt supported router!

## Credits

- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [Mattraks/delete-workflow-runs](https://github.com/Mattraks/delete-workflow-runs)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)
- [OpenWrt ACwifidude](https://github.com/ACwifidude/openwrt)
- [codelinaro](https://git.codelinaro.org/clo/qsdk/)
