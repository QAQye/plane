#include "server.h"

Server::Server(QObject *parent)
    : QObject{parent}
{
    // 获取本机名
    QString localHostName = QHostInfo::localHostName();
    // 根据本机名获取本机的IP地址信息
    QHostInfo info = QHostInfo::fromName(localHostName);

    // 遍历所有IP地址，找到第一个IPv4地址
    foreach (QHostAddress address, info.addresses()) {
        if (address.protocol() == QAbstractSocket::IPv4Protocol) {
            this->ip = address.toString();
        }
    }
    // 打印出找到的IPv4地址
    qDebug() << this->ip;
}

const QString &Server::getIp() const
{
    // 返回服务器的IP地址
    return ip;
}

void Server::setIp(const QString &newIp)
{
    // 设置服务器的IP地址，如果新地址与旧地址不同，则发出ipChanged信号
    if (ip == newIp)
        return;
    ip = newIp;
    emit ipChanged();
}

void Server::portSlot(QString s)
{
    // 将字符串转换为端口号
    port = s.toUShort();
    if (port == 0) {
        // 如果端口号无效，打印错误信息
        qDebug() << "port error!";
    }
    qDebug() << __FUNCTION__ << "  " << port;

    // 创建一个QTcpServer对象，并监听指定端口
    tcpserver = new QTcpServer(this);
    if (!tcpserver->listen(QHostAddress::Any, port)) {
        // 如果监听失败，打印错误信息
        qDebug() << tcpserver->errorString();
        return;
    }

    // 当有新的连接时，连接newConnection信号到槽函数
    connect(tcpserver, &QTcpServer::newConnection, this, [=]() {
        // 发出连接成功的信号
        emit connectSuccess();

        // 接受客户端连接
        clientConnection = tcpserver->nextPendingConnection();

        // 当有可读数据时，读取数据并处理
        connect(clientConnection, &QTcpSocket::readyRead, this, [=]() {
            QByteArray data = clientConnection->readAll();
            // 解析接收到的数据
            QStringList list = QString(data).split(",");
            // 发出接收数据成功的信号
            emit receiveOk();
        });

        // 当客户端断开连接时，关闭连接并清理资源
        connect(clientConnection, &QTcpSocket::disconnected, this, [=]() {
            emit disConnectSignal();
            clientConnection->close();
            clientConnection->deleteLater();
        });
        qDebug() << "server start";
    });
}
void Server::disConnect()
{
    // 断开与客户端的连接
    clientConnection->disconnectFromHost();
    clientConnection->close();
    clientConnection->deleteLater();
}
