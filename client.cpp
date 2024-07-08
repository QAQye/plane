#include "client.h"
#include<QHostAddress>
#include<QDebug>
#include<QJsonDocument>
#include<QJsonObject>
void Client::connectserver(const QString &ip, short port)
{
    socket.connectToHost(QHostAddress(ip),port);
    connect(&socket, &QTcpSocket::connected, this, []() { qDebug() << "连接成功"; });
    connect(&socket, &QTcpSocket::readyRead, this, &Client::readData);
}

Client::Client(QObject *parent)
    : QObject{parent}
{}

void Client::readData()
{
    QString data=socket.readAll();
    QJsonDocument doc=QJsonDocument::fromJson(data.toUtf8());
    QJsonObject json=doc.object();
    QString type=json["type"].toString();
    if(type=="idMsg"){
        qDebug()<<json["id"].toInt();
    }

}
