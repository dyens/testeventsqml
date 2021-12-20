import QtQuick
import QtQuick.Window
import MyObject
import QtQuick.Controls


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyObject {
        id: obj
    }

    Button{
        id: button
        text: "set value"
        // MyObject.event not called
        onClicked: function () {
            console.log('button clicked');
            obj.value = true;

        }
    }

    // MyObject.event not called
    Component.onCompleted: function () {
        console.log('app started')
        obj.value = false;
    }
}
