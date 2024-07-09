//pjl
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQmlEngine>
#include "client.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Client client;
    client.connectserver("127.0.0.1", 8888);
    auto context = engine.rootContext();
    context->setContextProperty("client", &client);
    // qmlRegisterType<Connect>("Connect", 1, 0, "Connec);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("Planes", "Window");

    return app.exec();
}
