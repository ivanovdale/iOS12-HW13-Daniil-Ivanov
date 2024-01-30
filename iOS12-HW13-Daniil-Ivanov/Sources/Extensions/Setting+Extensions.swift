//
//  Setting+Extensions.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 30.01.2024.
//

import UIKit

extension SettingType {

    // MARK: Image

    var image: UIImage {
        let imageName: String
        switch self {
        case .airplaneMode:
            imageName = "airplane"
        case .wifi:
            imageName = "wifi"
        case .bluetooth:
            let image = UIImage(named: "bluetooth")
            return image ?? UIImage()
        case .mobileService:
            imageName = "antenna.radiowaves.left.and.right"
        case .personalHotspot:
            imageName = "personalhotspot"
        case .vpn:
            imageName = "network"
        case .notifications:
            imageName = "bell.badge.fill"
        case .soundsAndHaptics:
            imageName = "speaker.wave.3"
        case .focus:
            imageName = "moon.fill"
        case .screenTime:
            imageName = "hourglass"
        case .general:
            imageName = "gear"
        case .controlCentre:
            imageName = "switch.2"
        case .displayAndBrightness:
            imageName = "sun.max.fill"
        case .accessibility:
            imageName = "accessibility"
        case .wallpaper:
            imageName = "atom"
        case .standBy:
            imageName = "clock.fill"
        }
        return UIImage(systemName: imageName) ?? UIImage()
    }

    // MARK: Color
    
    var color: UIColor {
        let color: UIColor
        switch self {
        case .airplaneMode:
            color = .systemOrange
        case .wifi:
            color = .systemBlue
        case .bluetooth:
            color = .systemBlue
        case .mobileService:
            color = .systemGreen
        case .personalHotspot:
            color = .systemGreen
        case .vpn:
            color = .systemBlue
        case .notifications:
            color = .systemRed
        case .soundsAndHaptics:
            color = .systemPink
        case .focus:
            color = .systemPurple
        case .screenTime:
            color = .systemPurple
        case .general:
            color = .systemGray
        case .controlCentre:
            color = .systemGray
        case .displayAndBrightness:
            color = .systemBlue
        case .accessibility:
            color = .systemBlue
        case .wallpaper:
            color = .systemTeal
        case .standBy:
            color = .black
        }
        return color
    }
}
