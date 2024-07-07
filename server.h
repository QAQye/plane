#ifndef SERVER_H
#define SERVER_H

#include <QObject>
#include <QtNetwork>

// Server类继承自QObject，并且使用了QtNetwork模块中的类
class Server : public QObject
{
    Q_OBJECT
public:
    // 构造函数，可以接受一个父对象指针
    explicit Server(QObject *parent = nullptr);

    // Q_PROPERTY宏用于声明属性，这些属性可以在QML中使用
    // ip属性，用于存储服务器的IP地址
    Q_PROPERTY(QString ip READ getIp WRITE setIp NOTIFY ipChanged)

    // 以下是属性的读取器和设置器
    const QString &getIp() const;
    void setIp(const QString &newIp);

    // Q_INVOKABLE宏表示这个方法可以在QML中调用
    // 用于向客户端发送棋子将要移动到的位置

    // 用于断开与客户端的连接
    Q_INVOKABLE void disConnect();

    // 以下是其他属性的读取器和设置器

public slots:
    // 服务端连接到客户端的槽函数
    void portSlot(QString s);

signals:
    // 以下是信号，当对应的属性发生变化时发出
    void ipChanged();
    // 当连接成功时发出
    void connectSuccess();
    void writeOk();
    // 当接收数据成功时发出
    void receiveOk();
    // 当断开连接时发出
    void disConnectSignal();

private:
    // 以下是私有成员变量
    QString ip;
    quint16 port;
    QTcpServer *tcpserver;
    QTcpSocket *clientConnection;
};

#endif // SERVER_H
