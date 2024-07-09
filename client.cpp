#include "client.h"
#include <QDebug>
#include <QHostAddress>
#include <QJsonDocument>
#include <QJsonObject>
void Client::connectserver(const QString &ip, short port)
{
    socket.connectToHost(QHostAddress(ip), port);
    connect(&socket, &QTcpSocket::connected, this, []() { qDebug() << "连接成功"; });
    connect(&socket, &QTcpSocket::readyRead, this, &Client::readData);
}

Client::Client(QObject *parent)
    : QObject{parent}
{}

int Client::Id()
{
    return id;
}

void Client::sendMsg(const QString &str)
{
    socket.write(str.toUtf8());
}

void Client::readData()
{
    QString data = socket.readAll();
    QJsonDocument doc = QJsonDocument::fromJson(data.toUtf8());
    QJsonObject json = doc.object();
    QString type = json["type"].toString();
    if (type == "idMsg") {
        qDebug() << "服务器分配ids:" << json["data"].toInt();
        id = json["id"].toInt();
    }
}
// void Client::portSlot(QString p, QString i)
// {
//     // 将字符串转换为端口号和IP地址
//     port = p.toUShort();
//     ip = i;

//     // 检测IP地址的格式是否正确
//     QStringList list = ip.split(".");
//     if (list.size() != 4) {
//         qDebug() << "ip error";
//         return;
//     }
//     for (int i = 0; i < 4; i++) {
//         if (list[i].size() == 0 || list[i].size() > 3) {
//             qDebug() << "ip error";
//             return;
//         }
//         for (int j = 0; j < list[i].size(); j++) {
//             if (list[i].at(j) < '0' || list[i].at(j) > '9') {
//                 qDebug() << "ip error";
//                 return;
//             }
//         }
//     }

//     // 尝试连接到服务器
//     tcpSocket->connectToHost(ip, port);
// }

// void Client::sendMessage(const QJsonObject &json)
// {
//     QJsonDocument doc(json);
//     QByteArray data = doc.toJson();
//     tcpSocket->write(data);
// }

// void Client::onConnected()
// {
//     qDebug() << "Connected to the server";
// }

// void Client::onReadyRead()
// {
//     QByteArray data = tcpSocket->readAll();
//     QJsonDocument doc = QJsonDocument::fromJson(data);
//     QJsonObject json = doc.object();

//     QString type = json["type"].toString();
//     if (type == "idMsg") {
//         int id = json["data"].toInt();
//         tid = id;
//         qDebug() << "Received ID from server:" << id;
//     } else if (type == "棋盘数据") {
//         qDebug() << "Received board data from server:" << json;
//     }
// }

// void Client::onDisconnected()
// {
//     qDebug() << "Disconnected from server";
// }
