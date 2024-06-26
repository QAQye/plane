#include "connect.h"

Connect::Connect(QObject *parent)
    : QObject{parent}
{
    // 创建一个QTcpSocket对象
    tcpsocket = new QTcpSocket(this);

    // 当连接成功时，发出connectSuccess信号
    connect(tcpsocket, &QTcpSocket::connected, this, [=]() { emit connectSuccess(); });

    // 当有可读数据时，读取数据并处理
    connect(tcpsocket, &QTcpSocket::readyRead, this, [=]() {
        QByteArray data = tcpsocket->readAll();
        // 解析接收到的数据
        QStringList list = QString(data).split(",");
        firstrow = 10 - list[0].toInt() + 1;
        firstcol = 9 - list[1].toInt() + 1;
        row = 10 - list[2].toInt() + 1;
        col = 9 - list[3].toInt() + 1;
        qDebug() << list << "  " << firstrow << "  " << firstcol << "  " << row << "  " << col;
        // 发出接收数据成功的信号
        emit receiveOk();
    });

    // 当断开连接时，关闭连接并清理资源
    connect(tcpsocket, &QTcpSocket::disconnected, this, [=]() {
        emit disConnectSignal();
        tcpsocket->close();
        tcpsocket->deleteLater();
    });
}

// 客户端连接到服务端的槽函数
void Connect::portSlot(QString p, QString i)
{
    // 将字符串转换为端口号和IP地址
    port = p.toUShort();
    ip = i;

    // 检测IP地址的格式是否正确
    QStringList list = ip.split(".");
    if (list.size() != 4) {
        qDebug() << "ip error";
        return;
    }
    for (int i = 0; i < 4; i++) {
        if (list[i].size() == 0 || list[i].size() > 3) {
            qDebug() << "ip error";
            return;
        }
        for (int j = 0; j < list[i].size(); j++) {
            if (list[i].at(j) < '0' || list[i].at(j) > '9') {
                qDebug() << "ip error";
                return;
            }
        }
    }

    // 尝试连接到服务器
    tcpsocket->connectToHost(ip, port);
}

// 连接失败时显示错误信息
void Connect::displayError(QAbstractSocket::SocketError)
{
    qDebug() << tcpsocket->errorString();
}

// 以下是一系列getter和setter方法，用于访问和修改客户端的属性
int Connect::getCol() const
{
    return col;
}

void Connect::setCol(int newCol)
{
    if (col == newCol)
        return;
    col = newCol;
    emit colChanged();
}

int Connect::getRow() const
{
    return row;
}

void Connect::setRow(int newRow)
{
    if (row == newRow)
        return;
    row = newRow;
    emit rowChanged();
}

int Connect::getFirstcol() const
{
    return firstcol;
}

void Connect::setFirstcol(int newFirstcol)
{
    if (firstcol == newFirstcol)
        return;
    firstcol = newFirstcol;
    emit firstcolChanged();
}

int Connect::getFirstrow() const
{
    return firstrow;
}

void Connect::setFirstrow(int newFirstrow)
{
    if (firstrow == newFirstrow)
        return;
    firstrow = newFirstrow;
    emit firstrowChanged();
}

// qml端可调用的向服务端发送棋子将要移动到的位置的方法
void Connect::xyChangedSlot(int x, int y, int x1, int y1)
{
    // 将棋子的当前位置和目标位置转换为字符串
    QString mes;
    mes = QString::number(x) + "," + QString::number(y) + "," + QString::number(x1) + ","
          + QString::number(y1);
    qDebug() << "11111";
    // 发送数据到服务器
    tcpsocket->write(mes.toUtf8());
    // 发出写入成功的信号
    emit writeOk();
}

// 客户端断开连接
void Connect::disConnect()
{
    // 断开与服务器的连接
    tcpsocket->disconnectFromHost();
    tcpsocket->close();
    tcpsocket->deleteLater();
}
