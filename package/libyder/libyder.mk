################################################################################
#
# libyder
# https://github.com/babelouest/yder
#
################################################################################

LIBYDER_VERSION = 1.4.20
LIBYDER_SITE = $(call github,babelouest,yder,v$(LIBYDER_VERSION))
LIBYDER_LICENSE = GPL-2.1
LIBYDER_LICENSE_FILES = LICENSE
LIBYDER_INSTALL_STAGING = YES
LIBYDER_CONF_OPTS = \
	-DWITH_JOURNALD=OFF \
	-DBUILD_STATIC=OFF \
	-DBUILD_YDER_TESTING=OFF \
	-DBUILD_YDER_DOCUMENTATION=OFF \
	-DINSTALL_HEADER=ON \
	-DCMAKE_BUILD_TYPE=Release
LIBYDER_DEPENDENCIES = \
	liborcania

$(eval $(cmake-package))
