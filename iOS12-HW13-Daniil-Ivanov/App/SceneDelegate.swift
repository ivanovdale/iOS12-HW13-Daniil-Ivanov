//
//  SceneDelegate.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 30.01.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let settingsFactory = SettingsFactory()
        let settingsController = SettingsViewController(settingsFactory: settingsFactory)
        let navigationController = UINavigationController(rootViewController: settingsController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

