import QtQuick
import QtQuick.Controls
import QtQuick.Controls.FluentWinUI3
import QtQuick.Dialogs
import ConvertController 1.0

pragma ComponentBehavior: Bound

Window {
    id: window
    width: 640
    height: 480
    visible: true
    flags: Qt.Window
    title: qsTr("EPUB繁簡轉換")
    ConvertController{
        id: convert
        onConvertFailed: convertFailed.open()
        onConvertSuccess: convertSuccessed.open()
    }
    FolderDialog {
        id: folderDialog
        title: "請選擇一個檔案"
        onAccepted: {
            folderPath.text=folderDialog.selectedFolder
        }
    }
    MessageDialog {
        id: convertStart
        buttons: MessageDialog.Ok
        text: "開始轉換"
    }
    MessageDialog {
        id: convertFailed
        buttons: MessageDialog.Ok
        text: "失敗"
    }
    MessageDialog {
        id:convertSuccessed
        buttons: MessageDialog.Ok
        text: "成功"
    }
    
    Label{
        x: 36
        y: 25
        text:"epub繁簡轉換"
        font.pixelSize: 36
    }
    TextField{
        id: folderPath
        x: 36
        y: 93
        width: 469
        height: 30
        text: ""
        placeholderText: "請輸入資料夾路徑"
    }
    Button{
        id: fileExplore
        x: 511
        y: 92
        icon.source: "qrc:/icons/folder_open.svg"
        onClicked: {
            folderDialog.open()
        }
    }
    Label{
        x: 36
        y: 150
        text:"模式設定"
        font.pixelSize: 14
        id: settingLabel

    }
    ButtonGroup {
        id: radioGroup
    }
    ListView {
        id: configList
        width: 181
        height: 152
        anchors.left: parent.left
        anchors.top: settingLabel.bottom
        anchors.leftMargin: 36
        anchors.topMargin: 6
        model: ListModel {
            ListElement {
                opt: "簡轉繁"
            }
            ListElement {
                opt: "繁轉簡"
            }
        }
        delegate: RadioDelegate {
            required property string opt
            required property int index
            id: modeConfig
            text: qsTr(opt)
            checked: index == 0
            ButtonGroup.group: radioGroup
        }
    }
    Switch{
        x: 36
        y: 303
        text: "轉換詞彙"
        id: pharseConfig
    }
    ListModel {
            id: imageModel
            ListElement { source: "qrc:/background/cantarella.png" }
            ListElement { source: "qrc:/background/win11.png" }
            ListElement { source: "qrc:/background/changli.png" }
            ListElement { source: "qrc:/background/arch.png" }
            ListElement { source: "qrc:/background/yuexia.png" }
            ListElement { source: "qrc:/background/seele.png" }
            property int currentImageIndex: Math.random()*imageModel.count
        }
    Timer {
            id: timer
            interval: 5000
            running: true
            repeat: true
            onTriggered: {
                imageModel.currentImageIndex=Math.random()*imageModel.count
            }
        }
    Image {
                id: image2
                source: imageModel.get(imageModel.currentImageIndex).source
                opacity: 1
                anchors.right: parent.right
                anchors.bottom: convert_button.top
                height: 300
                width: 250
                fillMode:Image.PreserveAspectFit
                z: -1
    }
    Button{
        id: convert_button
        x: 530
        y: 422
        text: "開始"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 12
        anchors.bottomMargin: 26
        focus: false
        state: ""
        transformOrigin: Item.BottomRight
        onClicked: {
            convertStart.open();
            console.log("Start");
            convert.start(folderPath.text, ((radioGroup.checkedButton.text=="簡轉繁")?"s2tw":"tw2s")+((pharseConfig.checked)?"p":"")+".json")
        }
    }

}
