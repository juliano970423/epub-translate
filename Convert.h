#ifndef CONVERT_H
#define CONVERT_H

#include <QObject>
#include <QQmlEngine>
#include <opencc.h>
#include <QDir>
#include <KZip>
#include<QTemporaryDir>
#include <QDirIterator>
#include <QFile>
#include <QTextStream>
#include <QFileInfo>
#include <QCoreApplication>
#include <QDir>
#include <QThread>

class Convert : public QObject
{
    Q_OBJECT
private:
    bool convertEpub(QString filePath, QString opt, QString folderPath);
public:
    explicit Convert(QObject *parent = nullptr);
public slots:
    void convert(QString folderPath, QString opt);
signals:
    void failed();
    void success();
};

class ConvertController : public QObject
{
    Q_OBJECT
    QThread convertThread;
public:
    ConvertController() {
        Convert *worker = new Convert;
        worker->moveToThread(&convertThread);
        connect(&convertThread, &QThread::finished, worker, &QObject::deleteLater);
        connect(this, &ConvertController::start, worker, &Convert::convert);
        connect(worker, &Convert::failed, this, &ConvertController::failed);
        connect(worker, &Convert::success, this, &ConvertController::success);
        convertThread.start();
    }
    ~ConvertController() {
        convertThread.quit();
        convertThread.wait();
    }
public slots:
    void failed();
    void success();
signals:
    void start(QString folderPath, QString opt);
    void convertFailed();
    void convertSuccess();
};

#endif // CONVERT_H
