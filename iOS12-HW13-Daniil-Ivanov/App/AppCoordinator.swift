//
//  AppCoordinator.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 26.02.2024.
//

import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController : UINavigationController { get set }

    func start()
}

final class AppCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        goToSettingsPage()
    }

    func goToSettingsPage() {
        let settingsController = SettingsViewController()
        settingsController.appCoordinator = self

        navigationController.pushViewController(settingsController, animated: true)
    }

    func goToSettingDetailsPage(data: Setting) {
        let detailsController = SettingDetailsViewController(data: data)
        navigationController.pushViewController(detailsController, animated: true)
    }
}
