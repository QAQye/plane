#include "server.h"
#include<QJsonDocument>
#include<QJsonObject>

// 传递一个端口号以及指定父类
Server::Server(quint16 port, QObject *parent)
    : QObject(parent), tcpServer(new QTcpServer(this))
{
    if (!tcpServer->listen(QHostAddress::Any, port)) {
        qDebug() << "Unable to start the server:" << tcpServer->errorString();
        return;
    }

    connect(tcpServer, &QTcpServer::newConnection, this, &Server::onNewConnection);
    qDebug() << "Server is running on port" << port;
}

void Server::onNewConnection()
{
    // 当有新的客户端连接的时候调用此用于让服务器端口更好操作客户端
    static int id=0;
    QTcpSocket*clientConnection = tcpServer->nextPendingConnection();
    connect(clientConnection, &QTcpSocket::readyRead, this, &Server::onReadyRead);
    connect(clientConnection, &QTcpSocket::disconnected, this, &Server::onDisconnected);
    // QJsonObject 是 Qt 中的一个类，用于创建和操作 JSON 对象。
    // json 是一个 QJsonObject 类型的变量，用于存储 JSON 格式的数据。
    // json["type"]="idMsg"; 这行代码在 json 对象中添加了一个键值对，键是 “type”，值是 “idMsg”
    // json["data"]=++id; 这行代码在 json 对象中添加了另一个键值对，键是 “data”，值是 ++id。这里 id 是一个整型变量，++id 是先增加 id 的值，然后返回增加后的值。这个值被用作消息的数据部分是客户端的唯一标识符。每次有新的客户端连接时，id 的值都会增加，并将新的 id 作为数据添加到 JSON 对象中

    qDebug() << "Client connected";
    QJsonObject json;
    json["type"]="idMsg";
    json["data"]=++id;

    // clientConnection 是一个指向 QTcpSocket 对象的指针，它代表了一个客户端的 TCP 连接。 write()
    // 是 QTcpSocket 类的一个成员函数，用于向套接字发送数据。 QJsonDocument(json)
    // 是一个 QJsonDocument 类的实例，它从一个 QJsonObject 对象（在这里是 json）创建一个 JSON
    // 文档。QJsonDocument 用于将 QJsonObject 或 QJsonArray 对象序列化为 JSON 格式的数据。
    // .toJson() 是 QJsonDocument 类的一个成员函数，它将 JSON 文档转换为 JSON
    // 格式的字符串。 综上所述，这行代码的作用是将 json 对象转换为 JSON
    // 格式的字符串，并通过 clientConnection 发送给客户端

    //clientMap 是一个 map 容器它用于存储整数键（客户端 ID）和 QTcpSocket
    // 指针（客户端的套接字连接）之间的映射。
    // insert() 是 map 容器的一个成员函数，用于向 map 中插入新的键值对。
    // std::make_pair(id, clientConnection)是一个函数，用于创建一个键值对，其中 id 是客户端的唯一标识符，clientConnection
    // 是指向客户端套接字的指针。 这行代码的作用是将新的客户端连接信息和其对应的 ID
    // 存储到 clientMap 中，以便服务器可以跟踪和管理所有已连接的客户端。
    clientConnection->write(QJsonDocument(json).toJson());
    clientMap.insert(std::make_pair(id,clientConnection));
}
// QTcpSocket 对象发出 ReadyRead 信号时，onReadyRead() 槽函数会被自动调用，以便处理读取到的数据。
void Server::onReadyRead()
{
    // 实现服务器的数据传送,传递给其他三个客户端
    // 基于范围的循环遍历clientMap,使用迭代器
    for(auto it:clientMap){
        // second 是 std::pair 类型的成员，用于访问该对组的第二个元素。
        QString str=it.second->readAll();
        if(!str.isEmpty()){
            //解析消息
            // 将json字符串转化为json对象
            QJsonDocument doc=QJsonDocument::fromJson(str.toUtf8());
            QJsonObject json=doc.object();
            // json["type"] 是一种访问 QJsonObject 对象中键为 “type” 的值的方式
            QString msgType=json["type"].toString();
            if(msgType=="棋盘数据"){
                // 解析id
                int id=json["id"].toInt();
                //转发给其他三个人

                // 如果客户端 ID 不等于 id，
                // 则执行 it.second->write(str.toUtf8());
                // 这行代码将 str 字符串转换为 UTF-8 编码的 QByteArray，
                // 并使用 QTcpSocket 指针（it->second）将这个字节数组写入到对应的客户端连接
                // 这样，除了指定的客户端之外，所有其他客户端都会收到这个消息。
                for (auto it : clientMap) {
                    if(it.first!=id){
                        // 将一个字符串 str 发送到通过 QTcpSocket 对象 it.second 建立的 TCP 连接的另一端
                        it.second->write(str.toUtf8());
                    }
                }
            }
        }
    }
}

void Server::onDisconnected()
{
    qDebug() << "Client disconnected";
}
