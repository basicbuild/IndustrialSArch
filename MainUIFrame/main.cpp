#include "mainwindow.h"

#include <QApplication>
#include "Core.h"
#include "SubUIFrame.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    MainWindow w;
    w.show();

    // 动态库调用
    Core core;
    core.test();

    // 动态库子窗口调用
    SubUIFrame subUIFrame;
    subUIFrame.show();
    return a.exec();
}
