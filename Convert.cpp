#include "Convert.h"

Convert::Convert(QObject *parent)
    : QObject{parent}
{
}

void Convert::convert(QString folderPath, QString opt){
    if(folderPath==""){
        emit failed();
        return;
    }
    if(QUrl(folderPath).scheme()=="file"){
        folderPath=QUrl(folderPath).toLocalFile();
    }
    qDebug()<<folderPath;
    qDebug()<<opt;
    QDir directory(folderPath);
    if (!directory.exists()) {
        qWarning() << "目錄不存在:" << folderPath;
        emit failed();
        return;
    }
    // 设置过滤器以只查找.epub文件
    directory.setFilter(QDir::Files | QDir::NoSymLinks);
    directory.setNameFilters(QStringList("*.epub"));

    // 获取所有匹配的文件列表
    QFileInfoList fileList = directory.entryInfoList();
    for(QFileInfo &fileInfo:fileList){
        qDebug()<<fileInfo.filePath();
        if(!convertEpub(fileInfo.filePath(),opt, directory.path())){
            emit failed();
            return;
        }
    }
    emit success();
    return;
}

bool Convert::convertEpub(QString filePath, QString opt, QString folderPath){
    QString configFile = (QDir(QCoreApplication::applicationDirPath()).filePath("OpenCC_config/"+opt));
    qDebug()<<configFile;
    const opencc::SimpleConverter converter(configFile.toStdString());
    QTemporaryDir tempDir;
    if (!tempDir.isValid()) {
        qWarning() << "無法創建臨時目錄";
        return false;
    }
    qDebug()<<filePath;
    KZip epub(filePath);
    if (!epub.open(QIODevice::ReadOnly)) {
        qWarning() << "無法打開文件"<<filePath;
        return false;
    }

    // Take the root folder from the archive and create a KArchiveDirectory object.
    // KArchiveDirectory represents a directory in a KArchive.
    const KArchiveDirectory *root = epub.directory();

    // We can extract all contents from a KArchiveDirectory to a destination.
    // recursive true will also extract subdirectories.
    QString destination = tempDir.path();
    //QString destination = QCoreApplication::applicationDirPath()+"/epub/";
    qDebug()<<"des:"<<destination;
    bool recursive = true;
    root->copyTo(destination, recursive);
    epub.close();
    QDirIterator it(tempDir.path(),QStringList()<<"*.ncx"<<"*.opf"<< "*.html" << "*.xhtml",
                    QDir::Files | QDir::NoDotAndDotDot,
                    QDirIterator::Subdirectories);

    while (it.hasNext()) {
        QFile file(it.next());
        if(!file.open(QIODevice::ReadOnly | QIODevice::Text)){
            return false;
        }
        QString text = file.readAll();
        //qDebug() << "Found (recursive):" << text;
        file.close();
        if(!file.open(QIODevice::WriteOnly | QIODevice::Text)){
            return false;
        }
        file.write(QString::fromStdString(converter.Convert(text.toStdString())).toUtf8());
        file.close();
    }
    QString epubFilename = QFileInfo(QFile(epub.fileName())).fileName();
    if (!QDir(folderPath+"/output/").exists()){
        QDir().mkdir(folderPath+"/output/");
    }
    KZip output(folderPath+"/output/"+epubFilename);
    qDebug()<<output.fileName();
    if (!output.open(QIODevice::WriteOnly)) {
        qDebug()<<"failed to create zip";
        emit failed();
        return false;
    }
    QDirIterator it2(tempDir.path(), QDir::Files | QDir::Dirs | QDir::NoDotAndDotDot);
    while (it2.hasNext()) {
        it2.next();
        QFileInfo fileInfo(it2.fileInfo());
        qDebug()<<"file"<<fileInfo.filePath()<<fileInfo.fileName();
        if(fileInfo.isDir()){
            output.addLocalDirectory(fileInfo.filePath(), fileInfo.fileName());
        }else{
            output.addLocalFile(fileInfo.filePath(),fileInfo.fileName());
        }
    }
    qDebug()<<"finish";
    output.close();
    return true;
}


void ConvertController::failed(){
    emit convertFailed();
}
void ConvertController::success(){
    emit convertSuccess();
}
