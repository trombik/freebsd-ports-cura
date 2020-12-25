# $FreeBSD: head/devel/libsavitar/Makefile 557300 2020-12-08 20:03:07Z lbartoletti $

PORTNAME=	libSavitar
DISTVERSION=	4.8.0
CATEGORIES=	devel cad
DIST_SUBDIR=	Ultimaker

PATCH_SITES=   https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/commit/
PATCHFILES=    195633cf0c5f.patch:-p1

MAINTAINER=	db@FreeBSD.org
COMMENT=	C++ implementation of 3mf loading/python bindings

LICENSE=	LGPL3
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libpugixml.so:textproc/pugixml

USES=		cmake compiler:c++11-lang python:3.5+ pyqt:5
USE_PYQT=	sip pysip
USE_GITHUB=	yes
GH_ACCOUNT=	Ultimaker
GH_TAGNAME=	d4fe854
USE_LDCONFIG=	yes
CFLAGS+=	"-I${LOCALBASE}/include"
LDFLAGS+=	"-L${LOCALBASE}/lib"

.include <bsd.port.mk>
