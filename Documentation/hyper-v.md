# Hyper-V

## RDP

### Larger screen

Sometime the only solution is via Power Shell on the host.

```
set-vmvideo -vmname ub2204-desktop -horizontalresolution:1920  -verticalresolution:1080 -resolutiontype single
```

Edit /etc/default/grub

Change the line to&#x20;

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash video=hyperv_fb:1366x768"
```

Then&#x20;

```
sudo update-grub
sudo apt install linux-image-extra-virtual 
```

Then reboot
