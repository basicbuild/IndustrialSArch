QT -=  gui

TEMPLATE = lib
DEFINES += SUBDLL_LIBRARY
CONFIG += c++17
DEBUG_NAME = Cored
RELEASE_NAME = Core

#######################ͨ������#########################
# $$PWD .pro��.pri���ڵ�·��
BUILD_DIR = $$PWD/../build
OUTPUT_DIR = $$PWD/../output

# @brief ����Ԥ����궨��
DEFINES += CORE_LIBRARY

# @brief ������ʱ�ļ��������ļ�λ��
win32:CONFIG(debug, debug|release){
    MOC_DIR = $$BUILD_DIR/debug/$$TARGET/build_moc
    UI_DIR = $$BUILD_DIR/debug/$$TARGET/build_uic
    RCC_DIR = $$BUILD_DIR/debug/$$TARGET/build_rcc
    OBJECTS_DIR = $$BUILD_DIR/debug/$$TARGET/build_obj
}
win32:CONFIG(release, debug|release){
    MOC_DIR = $$BUILD_DIR/release/$$TARGET/build_moc
    UI_DIR = $$BUILD_DIR/release/$$TARGET/build_uic
    RCC_DIR = $$BUILD_DIR/release/$$TARGET/build_rcc
    OBJECTS_DIR = $$BUILD_DIR/release/$$TARGET/build_obj
}

# @brief ����Ŀ���ļ�����λ��
# DESTDIR Ŀ���ļ�·��
win32:CONFIG(debug, debug|release){
    DESTDIR = $$OUTPUT_DIR/debug
}
win32:CONFIG(release, debug|release){
    DESTDIR = $$OUTPUT_DIR/release
}

# @brief ָ�����ɵ�Ӧ�ó�����
win32:CONFIG(debug, debug|release){
    TARGET  = $$DEBUG_NAME
}
win32:CONFIG(release, debug|release){
    TARGET  = $$RELEASE_NAME
}

#######################��������#########################
#####################################################

SOURCES += \
    Core.cpp

HEADERS += \
    Core_global.h \
    Core.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
