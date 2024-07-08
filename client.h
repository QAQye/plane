#ifndef CLIENT_H
#define CLIENT_H

#include <QObject>
#include<QTcpSocket>
class Client : public QObject
{
    Q_OBJECT

    // Q_INVOKABLE void connectserver()
    // Q_INVOKABLE void connectserver(const QString &ip, short port);

    // //客户端断开连接
    // Q_INVOKABLE void disConnect();

public:
    void connectserver(const QString &ip, short port);
    explicit Client(QObject *parent = nullptr);

private slots:
    void readData();
signals:
private:
    QTcpSocket socket;
};

#endif // CLIENT_H
