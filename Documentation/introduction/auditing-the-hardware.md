# Auditing the hardware

## OS Independent Audit

When commissioning or repurposing equipment, a hardware audit should be done before any other work. You need to know what you have!

* For Dell hardware, this can be done via the iDRAC.
* For HP hardware, this can be done via the ILO.

In each case, you can log in and download a configuration in a JSON format.&#x20;

**This should be saved as part of the hardware record for the server.**

You may also run the ILO/iDRAC scripts in the accompanying GIT repo.

## Linux Audit

Once a Linux system has been installed and is apparently running, the script **hardwareinfo.sh** should be run. This details what Linux thinks the configuration of the equipment is. Any discrepancy may show up missing drivers and misconfiguration.

**This should be saved as part of the hardware record for the server.**
