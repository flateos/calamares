/* === This file is part of Calamares Extensions - <http://github.com/calamares-extensions> ===
 *
 * SPDX-FileCopyrightText: 2021 Adriaan de Groot <groot@kde.org>
 * SPDX-License-Identifier: BSD-2-Clause
 */

import QtQuick 2.5

Item {
    id: imageslide

    visible: false

    anchors.fill: parent

    property bool isSlide: true;

    property string notes;

    property string src;

    Image {
        id: image
        source: src
        width: parent.width-100
        height: parent.height-100
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent
    }
}
