#include "client.h"
#include <QDebug>
#include <QHostAddress>

Client::Client(const QString &host, quint16 port, QObject *parent)
    : QObject(parent)
    , tcpSocket(new QTcpSocket(this))
{
    connect(tcpSocket, &QTcpSocket::connected, this, &Client::onConnected);
    connect(tcpSocket, &QTcpSocket::readyRead, this, &Client::onReadyRead);
    connect(tcpSocket, &QTcpSocket::disconnected, this, &Client::onDisconnected);
    // 连接服务器

    // tcpSocket->connectToHost(QHostAddress(host), port);
}
void Client::portSlot(QString p, QString i)
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
    tcpSocket->connectToHost(ip, port);
}

void Client::sendMessage(const QJsonObject &json)
{
    QJsonDocument doc(json);
    QByteArray data = doc.toJson();
    tcpSocket->write(data);
}

void Client::onConnected()
{
    qDebug() << "Connected to the server";
}

void Client::onReadyRead()
{
    QByteArray data = tcpSocket->readAll();
    QJsonDocument doc = QJsonDocument::fromJson(data);
    QJsonObject json = doc.object();

    QString type = json["type"].toString();
    if (type == "idMsg") {
        int id = json["data"].toInt();
        tid = id;
        qDebug() << "Received ID from server:" << id;
    } else if (type == "棋盘数据") {
        qDebug() << "Received board data from server:" << json;
    }
}

void Client::onDisconnected()
{
    qDebug() << "Disconnected from server";
}
