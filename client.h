#ifndef CLIENT_H
#define CLIENT_H

#include <QJsonDocument>
#include <QJsonObject>
#include <QObject>
#include <QTcpSocket>

class Client : public QObject
{
    Q_OBJECT

public:
    explicit Client(const QString &host, quint16 port, QObject *parent = nullptr);
    void sendMessage(const QJsonObject &json);

private slots:
    void onConnected();
    void onReadyRead();
    void onDisconnected();
    void portSlot(QString p, QString i);

private:
    QTcpSocket *tcpSocket;
    int tid;
    quint16 port;
    QString ip;
};

#endif // CLIENT_H
