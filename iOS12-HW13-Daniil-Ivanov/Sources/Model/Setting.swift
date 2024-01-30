//
//  Setting.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 30.01.2024.
//

import Foundation

struct Setting {
    let type: SettingType
    let kind: SettingKind?

    init(type: SettingType, kind: SettingKind?) {
        self.type = type
        self.kind = kind
    }

    init(type: SettingType) {
        self.type = type
        self.kind = nil
    }
}

enum SettingType: String {
    case airplaneMode = "Авиарежим"
    case wifi = "Wi-Fi"
    case bluetooth = "Bluetooth"
    case mobileService = "Сотовая связь"
    case personalHotspot = "Режим модема"
    case vpn = "VPN"
    case notifications = "Уведомления"
    case soundsAndHaptics = "Звуки, тактильные сигналы"
    case focus = "Фокусирование"
    case screenTime = "Экранное время"
    case general = "Основные"
    case controlCentre = "Пункт управления"
    case displayAndBrightness = "Экран и яркость"
    case accessibility = "Универсальный доступ"
    case wallpaper = "Обои"
    case standBy = "Ожидание"
}

enum SettingKind {
    case switcher(value: Bool)
    case connectionInfo(value: ConnectionInfo)
    case notification(count: Int)
}

enum ConnectionInfo: CustomStringConvertible {
    case turnOn
    case turnOff
    case notConnected
    case connected
    case connectedEmptyInfo

    var description: String {
        switch self {
        case .turnOn:
            "Вкл."
        case .turnOff:
            "Выкл."
        case .notConnected:
            "Не подключен"
        case .connected:
            "Подключен"
        case .connectedEmptyInfo:
            ""
        }
    }
}
