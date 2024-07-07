#ifndef CONNECT_H
#define CONNECT_H

#include <QObject>
#include <QtNetwork>

// Connect类继承自QObject，并且使用了QtNetwork模块中的类
class Connect : public QObject
{
    Q_OBJECT
public:
    // 构造函数，可以接受一个父对象指针
    explicit Connect(QObject *parent = nullptr);

    // Q_INVOKABLE宏表示这个方法可以在QML中直接调用

    // 用于断开与服务端的连接
    Q_INVOKABLE void disConnect();
    // 以下是属性的读取器和设置器

public slots:
    // 客户端连接到服务端的槽函数
    void portSlot(QString p, QString i);

    // 连接失败信息提示
    void displayError(QAbstractSocket::SocketError);

signals:
    // 以下是信号，用于通知QML各种事件的发生
    void connectSuccess();
    void receiveOk();
    void writeOk();
    void disConnectSignal();

private:
    // 以下是私有成员变量
    // 端口号和ip
    quint16 port;
    QString ip;
    QTcpSocket *tcpsocket;
};

#endif // CONNECT_H
