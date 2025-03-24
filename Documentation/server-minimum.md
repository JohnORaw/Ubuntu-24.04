# Server Minimum

Any server being built as a VM should start with a minimum configuration. Only install what is needed for that use-case.

Initially

```
sudo apt update
sudo apt-upgrade -y
sudo apt install dnsutils -y
sudo apt install iputils-ping -y
sudo apt install nano -y
```

You may need to install SSH with

```
sudo apt get openssh-server -y
```

The configuration file is at **/etc/ssh/sshd\_config**

Edit the line which defines the port and remove the #, for port 22

Also remove the comment from the banner line, and create a warning banner at **/etc/issue.net**

Note that this did not work for me until after a reboot.

```
# This is the sshd server system-wide configuration file.  See
# sshd_config(5) for more information.

# This sshd was compiled with PATH=/usr/local/sbin:/usr/local/bin:

# The strategy used for options in the default sshd_config shipped with
# OpenSSH is to specify options with their default value where
# possible, but leave them commented.  Uncommented options override the
# default value.

Include /etc/ssh/sshd_config.d/*.conf

Port 22
#AddressFamily any
#ListenAddress 0.0.0.0
#ListenAddress ::

Banner /etc/issue.net
```

Edit the hostname

```
sudo nano /etc/hostname
```

Set the IP required, run the command

```
sudo nano /etc/netplan/00-installer-config.yaml
```

I commented out the old settings so I always have them. I then edited the file as shown below.

```
# This is the network config written by 'subiquity'
network:
  ethernets:
    ens160:
      dhcp4: no
      addresses:
        - 172.28.3.21/21
      routes:
        - to: default
          via: 172.28.0.20
      nameservers:
        addresses:
          - 172.28.35.1
          - 172.28.35.2
  version: 2
```

Then to apply the new plan

```
sudo netplan apply
```
