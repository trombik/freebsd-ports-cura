# $FreeBSD: head/net/libarcus/Makefile 557300 2020-12-08 20:03:07Z lbartoletti $

PORTNAME=	libArcus
PORTVERSION=	4.8.0
CATEGORIES=	net cad
DIST_SUBDIR=	Ultimaker

MAINTAINER=	db@FreeBSD.org
COMMENT=	Communication library between internal components for Ultimaker

LICENSE=	LGPL3
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libprotobuf.so:devel/protobuf

USES=		cmake compiler:c++11-lang python:3.5+ pyqt:5
USE_PYQT=	sip pysip
USE_GITHUB=	yes
GH_ACCOUNT=	Ultimaker
USE_LDCONFIG=	yes
GH_TAGNAME=	3afb644

.include <bsd.port.mk>
