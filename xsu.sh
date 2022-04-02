#! /data/data/com.termux/files/usr/bin/bash
su -c '
xsu_env=$PATH:/data/data/com.termux/files/usr/bin
xsu_env=$xsu_env:/data/data/com.termux/files/usr/bin/applets
xsu_env=$xsu_env:/data/data/com.termux/files/home/.termux/bin
export PATH=$xsu_env; exec su'

# Author: *_*
# Mail: reload8686@gmail.com