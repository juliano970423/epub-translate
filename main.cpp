#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QIcon>
#include <Convert.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<ConvertController>("ConvertController", 1, 0,"ConvertController");
    app.setWindowIcon(QIcon(":/icons/logo.png"));
    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("Epub_translate", "Main");

    return app.exec();
}
