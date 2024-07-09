//pjl
#ifndef CLIENT_H
#define CLIENT_H

#include <QObject>
#include <QTcpSocket>
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
    Q_INVOKABLE int Id();
    Q_INVOKABLE void sendMsg(const QString &str);
private slots:
    void readData();
signals:
private:
    int id;
    QTcpSocket socket;
};

#endif // CLIENT_H
