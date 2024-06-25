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
    // 用于向服务端发送棋子将要移动到的位置
    Q_INVOKABLE void xyChangedSlot(int x, int y, int x1, int y1);

    // 用于断开与服务端的连接
    Q_INVOKABLE void disConnect();

    // Q_PROPERTY宏用于声明属性，这些属性可以在QML中使用
    // firstrow属性，用于存储棋子的初始行
    Q_PROPERTY(int firstrow READ getFirstrow WRITE setFirstrow NOTIFY firstrowChanged)
    // firstcol属性，用于存储棋子的初始列
    Q_PROPERTY(int firstcol READ getFirstcol WRITE setFirstcol NOTIFY firstcolChanged)
    // row属性，用于存储棋子要移动到的行
    Q_PROPERTY(int row READ getRow WRITE setRow NOTIFY rowChanged)
    // col属性，用于存储棋子要移动到的列
    Q_PROPERTY(int col READ getCol WRITE setCol NOTIFY colChanged)

    // 以下是属性的读取器和设置器
    int getFirstrow() const;
    void setFirstrow(int newFirstrow);

    int getFirstcol() const;
    void setFirstcol(int newFirstcol);

    int getRow() const;
    void setRow(int newRow);

    int getCol() const;
    void setCol(int newCol);

public slots:
    // 客户端连接到服务端的槽函数
    void portSlot(QString p, QString i);

    // 连接失败信息提示
    void displayError(QAbstractSocket::SocketError);

signals:
    // 以下是信号，用于通知QML各种事件的发生
    void connectSuccess();
    void receiveOk();
    void firstrowChanged();
    void firstcolChanged();
    void rowChanged();
    void colChanged();
    void writeOk();
    void disConnectSignal();

private:
    // 以下是私有成员变量
    quint16 port;
    QString ip;
    QTcpSocket *tcpsocket;
    // 注册的qml的初始行property
    int firstrow;
    // 注册的qml的初始列property
    int firstcol;
    // 注册的qml的要移动到的行property
    int row;
    // 注册的qml的要移动到的列property
    int col;
};

#endif // CONNECT_H
