/* === This file is part of Calamares Extensions - <http://github.com/calamares-extensions> ===
 *
 * SPDX-FileCopyrightText: 2021 Adriaan de Groot <groot@kde.org>
 * SPDX-License-Identifier: BSD-2-Clause
 */

import QtQuick 2.0
import calamares.slideshow 1.0
import io.calamares.ui 1.0

Presentation
{
    id: presentation

    Timer {
        interval: 4000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    function onActivate() { }
    function onLeave() { }

    Rectangle {
        id: background
        anchors.fill: parent
        color: Branding.styleString(Branding.SidebarBackground)
        z: -1
    }

    ImageSlide {
        src: "assets/slide_01.svg"
    }

    ImageSlide {
        src: "assets/slide_02.svg"
    }

    ImageSlide {
        src: "assets/slide_03.svg"
    }
}
