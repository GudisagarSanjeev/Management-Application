QT += quick sql
CONFIG += c++11

RC_ICONS = icon.ico

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS
OTHER_FILES +=\
$$PWD/Manifest/AndroidManifest.xml
ANDROID_PACKAGE_SOURCE_DIR=$$PWD/Manifest

DESTDIR= ../DestinationDir
# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp \
    ManagementInfo.cpp \
    DataBaseInteractions.cpp \
    TimeInfo.cpp \
    Tmodel.cpp \
    InVoiceInfo.cpp \
    PeopleModel.cpp \
    AccountModel.cpp \
    EmployeeInfo.cpp \
    EmployeeModel.cpp \
    LeaveInfo.cpp \
    LeaveModel.cpp \
    PaymentModel.cpp \
    LeaveModelFilterInfo.cpp \
    LeaveModelFilter.cpp \
    PaymentProxyModel.cpp

RESOURCES += qml.qrc \
    Images.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    ManagementInfo.h \
    DataBaseInteractions.h \
    TimeInfo.h \
    Tmodel.h \
    InVoiceInfo.h \
    PeopleModel.h \
    AccountModel.h \
    EmployeeInfo.h \
    EmployeeModel.h \
    LeaveInfo.h \
    LeaveModel.h \
    PaymentModel.h \
    LeaveModelFilterInfo.h \
    LeaveModelFilter.h \
    PaymentProxyModel.h

DISTFILES += \
    Images/Homepage.jpg \
    Images/Wallpaper2.png \
    Images/download.png
