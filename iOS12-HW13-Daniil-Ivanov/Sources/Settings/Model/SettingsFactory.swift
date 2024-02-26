//
//  SettingsFactory.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 30.01.2024.
//

import Foundation

struct SettingsFactory {
    static func createGroupedSettings() -> [[Setting]] {
        let primaryGroup = [
            Setting(type: .airplaneMode, kind: .switcher(value: false)),
            Setting(type: .wifi, kind: .connectionInfo(value: .connected)),
            Setting(type: .bluetooth, kind: .connectionInfo(value: .notConnected)),
            Setting(type: .mobileService, kind: .connectionInfo(value: .turnOn)),
            Setting(type: .personalHotspot, kind: .connectionInfo(value: .turnOff)),
            Setting(type: .vpn, kind: .connectionInfo(value: .notConnected)),
        ]

        let secondaryGroup = [
            Setting(type: .notifications),
            Setting(type: .soundsAndHaptics),
            Setting(type: .focus),
            Setting(type: .screenTime),
        ]

        let tertiaryGroup = [
            Setting(type: .general, kind: .notification(count: 1)),
            Setting(type: .controlCentre),
            Setting(type: .displayAndBrightness),
            Setting(type: .accessibility),
            Setting(type: .wallpaper),
            Setting(type: .standBy),
        ]

        let groupedSettings = [
            primaryGroup,
            secondaryGroup,
            tertiaryGroup,
        ]

        return groupedSettings
    }
}
