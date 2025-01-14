![enter image description here](https://camo.githubusercontent.com/3e9ba499fd311db91f02459bf0ff507620ca04b9/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f353530343239382f313231373733342f61326333643331362d323661652d313165332d396235322d3932373738343765326230642e706e67)


**Usage**:

* This Docker uses port: 53, 80 & 443. Make sure they are not in use.
* The user/group is for file-permissions only.
* "--name plexconnect" is optional.

```
docker run -d \
--name plexconnect \
--network=host \
-v /path/to/store/plexconnect:/PlexConnect \
-e USERID=xxxx -e GROUPID=xxxx \
izzno/plexconnect
```

----------
Docker Crash Course: https://anotherlinux.com/index.php/2017/11/14/docker-crash-course/
For information on how to start/restart automatically please se:
https://docs.docker.com/engine/admin/start-containers-automatically/

----------

**Description**

This image is based on alpine making a tiny footprint. **(75mb)**
PlexConnect is stored outside the container making sure all changes are saved.

* Plexconnect is pulled each time you start securing new updates
* Certificates are auto-generated the first time you run this docker
* All changes are persistant, ink plex login
* For the best experiance, enable **Fanart** in General Appearance Settings

For how to configure you appletv please see:
https://github.com/iBaa/PlexConnect/wiki/Install-Guide-AppleTV-Wifi

----------

**Tested on**:

Linux \
QNAP \
Windows \
unRAID

---------

**Security (Warning)ish**

NB: PlexConnect has to run as root in the container. This is because of its DNS service.

**Source**: https://github.com/izznogooood/plexconnect-docker \
**Original Project**: https://github.com/iBaa/PlexConnect

----------

**Troubleshooting**:

Bofore reporting a problem, please reboot your appleTV and/or restart you docker.
Report issues: https://github.com/izznogooood/plexconnect-docker/issues

----------

**Changelog**:

11.21.2017  Fixed UID/GID settings
11.22.2016  Switched to Alpine Base

----------

**Development**:

* Raspberry PI, under development.
