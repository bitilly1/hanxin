#！/bin/bash

cd /private/preboot/EB20085768222DF8052D1E972C5F5D0FB581C1E5E3B77AE1CE6C1FA31777DE4F2E93798547545B22330AFCD634A4FF1F/jb-euOUhd/procursus/var/mobile/hanxin
rm -rf Packages Packages.bz2 Packages.xz Packages.lzma
dpkg-scanpackages -m ./debs /dev/null >Packages
bzip2 -9fkv Packages > Packages.bz2
xz -9fkev Packages > Packages.xz
xz -9fkev --format=lzma Packages > Packages.lzma

