#!/bin/sh


_do(){
	echo "now: ${1}"
	cd "${1}"
	echo 'remove old Packages file'
	rm -rfv Packages*
	echo 'new Packages file being generated'
	dpkg-scanpackages -m ./debs /dev/null >Packages
	bzip2 -v -k -9 Packages
	xz -v -k -9 --extreme Packages
	#zstd --ultra -22 -k Packages -o Packages.zst
}

_do '/var/mobile/hanxin/'
