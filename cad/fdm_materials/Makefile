PORTNAME=	fdm_materials
PORTEPOCH=	1
# XXX there is no 4.13.1.
# https://github.com/Ultimaker/fdm_materials/tags
DISTVERSION=	4.13.0
CATEGORIES=	cad
DIST_SUBDIR=	Ultimaker

MAINTAINER=	db@FreeBSD.org
COMMENT=	FDM Material database for 3D printers

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		cmake 

USE_GITHUB=	yes
GH_ACCOUNT=	Ultimaker
NO_ARCH=	yes
STRIP=

.include <bsd.port.mk>
