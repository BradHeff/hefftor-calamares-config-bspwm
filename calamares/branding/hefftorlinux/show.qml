/* === This file is part of Calamares - <https://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *   Copyright 2018, Adriaan de Groot <groot@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 5000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {

        Image {
            id: background1
            source: "calamares-1.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
			      anchors.centerIn: parent
        }
        Image {
            id: icon
            source: "images/logo.png"
            fillMode: Image.PreserveAspectFit
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 14
            anchors.bottomMargin: 10
        }
        Text {
            id: title
            font.pointSize: 16
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 8
            anchors.leftMargin: 18
            width: parent.width-10
            wrapMode: Text.WordWrap
            font.weight: Font.DemiBold
            text: "Welcome to HefftorLinux!"
        }

        Text {
            id: description
            font.pointSize: 14
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 46
            anchors.leftMargin: 18
            width: parent.width-10
            wrapMode: Text.WordWrap
            text: "<p>Thank you for choosing HefftorLinux. You've made the right choice!</p>"
        }
    }

    Slide {

        Image {
            id: background1
            source: "calamares-1.png"
            width: 800; height: 350
            fillMode: Image.PreserveAspectFit
                  anchors.centerIn: parent
        }
        Image {
            id: icon
            source: "images/logo.png"
            fillMode: Image.PreserveAspectFit
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 14
            anchors.bottomMargin: 10
        }
        Text {
            id: title
            font.pointSize: 16
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 8
            anchors.leftMargin: 18
            width: parent.width-10
            wrapMode: Text.WordWrap
            font.weight: Font.DemiBold
            text: "HINT!"
        }

        Text {
            id: description
            font.pointSize: 14
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 46
            anchors.leftMargin: 18
            width: parent.width-10
            wrapMode: Text.WordWrap
            text: "<p>Installing on a NVME is supported only with ext4 file system</p>"
        }
    }


    function onActivate() {
          console.log("QML Component (default slideshow) activated");
          presentation.currentSlide = 0;
    }

    function onLeave() {
          console.log("QML Component (default slideshow) deactivated");
    }

}
