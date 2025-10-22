#include "SubUIFrame.h"
#include <QLabel>

SubUIFrame::SubUIFrame(QWidget* parent)
    : QMainWindow(parent)
{
    resize(640/2, 480/2);
    setWindowTitle("SubUIFrame");

    QLabel* lbeCenter = new QLabel("This is SubUIFrame", this);
    lbeCenter->setAlignment(Qt::AlignCenter);

    setCentralWidget(lbeCenter);
}
