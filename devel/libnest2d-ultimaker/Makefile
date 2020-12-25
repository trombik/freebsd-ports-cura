# $FreeBSD$

# XXX ultimaker forked libnest2d, and never upstreamed patches
PORTNAME=	libnest2d-ultimaker
DISTVERSION=	0.4
CATEGORIES=	devel

# commits from the last tag, 0.4 to master
PATCH_SITES=	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/compare/
PATCHFILES=	85d66c7a3b89cbd1eba61251b135d968b92bedd9...4d6fb4d3919aad653cbae0ae2e03c0e1ac00c64b.patch

MAINTAINER=	y@trombik.org
COMMENT=	2D irregular bin packaging and nesting library

LICENSE=	LGPL3
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

LIB_DEPENDS=	libboost_system.so:devel/boost-libs \
	libpolyclipping.so:graphics/polyclipping \
	libnlopt.so:math/nlopt

USES=	cmake
USE_GITHUB=	yes
GH_TUPLE=	Ultimaker:libnest2d:4d6fb4d

.include <bsd.port.mk>
