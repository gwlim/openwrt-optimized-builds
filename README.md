**English**

# openwrt-optimized-builds

Opensource OpenWrt snapshot firmwares with performance optimizations and SFE build by github runners

- Routers require minimium 64MB RAM/8MB FLASH

Builds with all kmods

Firmware for the following routers are available

- cmcc rax3000m
- d-team newifi-d2
- h3c magic-nx30-pro
- p2w r619ac-128m
- tplink archer-c7-v4
- tplink tl-wdr4300-v1

## Getting Started

![Enable SFE](https://raw.githubusercontent.com/gwlim/openwrt-optimized-builds/refs/heads/master/getting_started.png "Enable Shortcut-FE")

## Debugging

### Show loading successful

```
root@OpenWrt:~# dmesg | grep fast
```

### Show offloaded ipv4 connections

```
root@OpenWrt:~#  sfe_dump ipv4
```

### Show offloaded ipv6 connections

```
root@OpenWrt:~#  sfe_dump ipv6
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
