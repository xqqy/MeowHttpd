QT += core network concurrent

CONFIG += c++11

TEMPLATE = app

SOURCES += \
    $$PWD/demo.cpp \
    MeowHttpd_nossl_nolocal.cpp

DISTFILES +=

HEADERS += \
    MeowHttpd_nossl_nolocal.h
