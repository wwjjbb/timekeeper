import QtQuick 1.1

Item{
    property real ang

    width: 132; height: 93
    Image {
        id: cogShadow
        x: 43; y: -5;
        source: "cogShadow.png"
        smooth: true;
        transform: Rotation {
            angle: ang * -1
            origin.x: cogShadow.width/2; origin.y: cogShadow.height/2;
            Behavior on angle {
                SpringAnimation { spring: 2; damping: 0.2; modulus: 360 }
            }
        }
    }
    Image {
        id: cog
        x: 50; y: -17;
        width: 82; height: 84;
        source: "cog.png"
        smooth: true;
        transform: Rotation {
            angle: ang * -1
            origin.x: cog.width/2; origin.y: cog.height/2;
            Behavior on angle {
                SpringAnimation { spring: 2; damping: 0.2; modulus: 360 }
            }
        }
    }
    Image {
        id: wheelShadow
        x: 3; y: 2;
        source: "wheelShadow.png"
        smooth: true;
        transform: Rotation {
            angle: ang
            origin.x: wheelShadow.width/2; origin.y: wheelShadow.height/2;
            Behavior on angle {
                SpringAnimation { spring: 2; damping: 0.2; modulus: 360 }
            }
        }
    }
    Image {
        id: wheel
        source: "wheel.png"
        smooth: true;
        transform: Rotation {
            angle: ang
            origin.x: wheel.width/2; origin.y: wheel.height/2;
            Behavior on angle {
                SpringAnimation { spring: 2; damping: 0.2; modulus: 360 }
            }
        }
    }
    Image {
        x: 26; y: 2;
        source: "driveBand.png"
        MouseArea {
            x: 15; y: 36
            width: 14; height: 14
            onClicked: {
                if(!lock){
                    lock = !lock
                    return
                }
                if(!calendar.lock){
                    calendar.lock = !calendar.lock
                    return
                }
                lock = !lock
                calendar.lock = !calendar.lock
            }
        }
    }


    state: "in"

    states: [
        State {
            name: "hide"
            PropertyChanges { target: whell; x: 10; y: 25; }
        },
        State {
            name: "out"
            PropertyChanges { target: whell; x: -5; }
        },
        State {
            name: "in"
            PropertyChanges { target: whell; x: -26; y: 137; }
        }
    ]

    Behavior on x {
             NumberAnimation { duration: 1500 }
    }
    Behavior on y {
             NumberAnimation { duration: 800 }
    }

}
