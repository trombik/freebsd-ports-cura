PORTNAME=	Uranium
PORTEPOCH=	1
DISTVERSION=	4.13.1
CATEGORIES=	cad
DIST_SUBDIR=	Ultimaker

MAINTAINER=	db@FreeBSD.org
COMMENT=	Python framework for 3D printing applications

LICENSE=	LGPL3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}scipy>0:science/py-scipy@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}cryptography>0:security/py-cryptography@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}requests>0:www/py-requests@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}PyOpenGL>0:graphics/py-PyOpenGL@${PY_FLAVOR}

USES=		cmake gettext python:3.5+ pyqt:5
USE_PYQT=	pyqt5
USE_GITHUB=	yes
GH_ACCOUNT=	Ultimaker
STRIP=
NO_ARCH=	yes

post-patch:
	@${FIND} ${WRKSRC} -name "*.orig" -delete
post-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/share/uranium/scripts
	cd ${WRKSRC}/scripts && ${COPYTREE_SHARE} . ${STAGEDIR}${PREFIX}/share/uranium/scripts

.include <bsd.port.mk>
