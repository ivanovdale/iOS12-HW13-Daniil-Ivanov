//
//  Setting.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 30.01.2024.
//

import Foundation

struct Setting<T> {
    let name: String
    let type: SettingType
    let value: T?
}

enum SettingType {
    case switcher
    case switcherWithDetails
    case connectionInfo
    case notification
}

enum ConnectionInfoType {
    case turnOn
    case turnOff
    case notConnected
    case connected
    case connectedWithInfo
}
