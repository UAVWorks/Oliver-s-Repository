#-------------------------------------------------
#
# Project created by QtCreator 2017-07-25T17:27:17
#
#-------------------------------------------------

QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

TARGET = osgUAV
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000
# disables all the APIs deprecated before Qt 6.0.0

DESTDIR = $$PWD/../../../output-osgUAV

CONFIG(debug, debug|release) {
    DESTDIR = $$DESTDIR-debug
} else {
    DESTDIR = $$DESTDIR-release
}

INCLUDEPATH += \
    $$PWD/../protobuf \
    $$PWD/../gui

LIBS += \
    -L$$OUT_PWD/../lib -lprotobuf -lgui

macx {
    INCLUDEPATH += $$PWD/../../../../OpenSceneGraph/include
    LIBS += -L$$PWD/../../../../OpenSceneGraph/lib
    QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.12
}

SOURCES += main.cpp