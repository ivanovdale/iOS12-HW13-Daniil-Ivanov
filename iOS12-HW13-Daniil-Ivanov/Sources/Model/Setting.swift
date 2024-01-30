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
    case homeScreenAndAppLibrary = "Экран \"домой\" и библиотека приложений"
    case accessibility = "Универсальный доступ"
    case wallpaper = "Обои"
    case standBy = "Ожидание"
    case siriAndSearch = "Siri и Поиск"
}

enum SettingKind {
    case switcher(value: Bool)
    case connectionInfo(value: ConnectionInfo)
    case notification(count: Int)
}

enum ConnectionInfo {
    case turnOn
    case turnOff
    case notConnected
    case connected
    case connectedWithInfo
}
