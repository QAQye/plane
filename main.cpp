#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    // qmlRegisterType<Server>("Server", 1, 0, "Server");
    // qmlRegisterType<Connect>("Connect", 1, 0, "Connect");
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("Planes", "Window");

    return app.exec();
}
