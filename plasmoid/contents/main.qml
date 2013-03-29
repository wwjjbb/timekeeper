import QtQuick 1.1
import "clock"
import "calendar"
import "luna"
import "wheels"
Rectangle {
/*
    Component.onCompleted: {
        plasmoid.setBackgroundHints(NoBackground);
    }
// */
    width: 500; height: 500
    color: "transparent"

    Calendar {
        anchors.centerIn: parent

        Cog{ x: 305;y: 188}
        Wheel{ x: -13;y: 178}
        Clock { x: -9; y: 42; shift: 4 }
//        Earth{ x: 168;y: 267}
        Luna  { x: 162;y: 90}


    }

}