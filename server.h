#ifndef SERVER_H
#define SERVER_H
#include <QDataStream>
#include <QHostAddress>
#include <QObject>
#include <QString>
#include <QTcpServer>
#include <QTcpSocket>
#include <map>
using std::map;
class Server : public QObject
{
    Q_OBJECT

public:
    // 构造方法
    Server(quint16 port, QObject *parent = nullptr);

private slots:
    void onNewConnection();
    void onReadyRead();
    void onDisconnected();

private:
    // map 是一种关联容器，
    // 它按照特定的顺序存储键值对，
    // 其中键是唯一的，而值则可以是重复的。
    // 在 map<int,QTcpSocket*> clientMap;
    // 这行代码中，clientMap 是一个 map 容器，
    // 它用于存储整数键和 QTcpSocket 指针值之间的映射。
    map<int, QTcpSocket *> clientMap;
    QTcpServer *tcpServer;
};

#endif // SERVER_H
