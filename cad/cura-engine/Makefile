# $FreeBSD: head/cad/cura-engine/Makefile 555802 2020-11-21 00:33:06Z db $

PORTNAME=		CuraEngine
DISTVERSION=		4.8.0
PORTEPOCH=		2
CATEGORIES=		cad
DIST_SUBDIR=		Ultimaker

MAINTAINER=	db@FreeBSD.org
COMMENT=	Engine of slicing solution for RepRap 3D printers

LICENSE=	AGPLv3

LIB_DEPENDS=	libArcus.so:net/libarcus	\
		libprotobuf.so:devel/protobuf

USES=		compiler:c++11-lang cmake

STB_TAG=	d5d052c

USE_GITHUB=	yes
GH_ACCOUNT=	Ultimaker
GH_PROJECT=	CuraEngine
GH_TAGNAME=	83c65a1
GH_TUPLE=	nothings:stb:${STB_TAG}:stb/include/stb

CMAKE_ARGS+=	-DStb_FOUND:BOOL=ON		\
		-DStb_INCLUDE_DIRS=${WRKSRC}/include

PLIST_FILES=	bin/CuraEngine

.include <bsd.port.mk>
