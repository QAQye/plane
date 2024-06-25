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
    // firstrow属性，用于存储棋子的初始行
    Q_PROPERTY(int firstrow READ getFirstrow WRITE setFirstrow NOTIFY firstrowChanged)
    // firstcol属性，用于存储棋子的初始列
    Q_PROPERTY(int firstcol READ getFirstcol WRITE setFirstcol NOTIFY firstcolChanged)
    // row属性，用于存储棋子要移动到的行
    Q_PROPERTY(int row READ getRow WRITE setRow NOTIFY rowChanged)
    // col属性，用于存储棋子要移动到的列
    Q_PROPERTY(int col READ getCol WRITE setCol NOTIFY colChanged)

    // 以下是属性的读取器和设置器
    const QString &getIp() const;
    void setIp(const QString &newIp);

    // Q_INVOKABLE宏表示这个方法可以在QML中调用
    // 用于向客户端发送棋子将要移动到的位置
    Q_INVOKABLE void xyChangedSlot(int x, int y, int x1, int y1);

    // 用于断开与客户端的连接
    Q_INVOKABLE void disConnect();

    // 以下是其他属性的读取器和设置器
    int getFirstrow() const;
    void setFirstrow(int newFirstrow);

    int getFirstcol() const;
    void setFirstcol(int newFirstcol);

    int getRow() const;
    void setRow(int newRow);

    int getCol() const;
    void setCol(int newCol);

public slots:
    // 服务端连接到客户端的槽函数
    void portSlot(QString s);

signals:
    // 以下是信号，当对应的属性发生变化时发出
    void ipChanged();
    // 当连接成功时发出
    void connectSuccess();
    // 当棋子的初始行发生变化时发出
    void firstrowChanged();
    // 当棋子的初始列发生变化时发出
    void firstcolChanged();
    // 当写入数据成功时发出
    void writeOk();
    // 当接收数据成功时发出
    void receiveOk();
    // 当棋子要移动到的行发生变化时发出
    void rowChanged();
    // 当棋子要移动到的列发生变化时发出
    void colChanged();
    // 当断开连接时发出
    void disConnectSignal();

private:
    // 以下是私有成员变量
    QString ip;
    quint16 port;
    QTcpServer *tcpserver;
    QTcpSocket *clientConnection;
    // 注册的qml的初始行property
    int firstrow;
    // 注册的qml的初始列property
    int firstcol;
    // 注册的qml的要移动到的行property
    int row;
    // 注册的qml的要移动到的列property
    int col;
};

#endif // SERVER_H
