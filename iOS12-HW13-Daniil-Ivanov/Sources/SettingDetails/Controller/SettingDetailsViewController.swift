//
//  SettingDetailsViewController.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 31.01.2024.
//

import UIKit

class SettingDetailsViewController: UIViewController {

    // MARK: Data

    private let data: Setting

    // MARK: Init

    init(data: Setting) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Lifecycle

    override func loadView() {
        setupView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Setup

    private func setupView() {
        let view = SettingDetailsView()
        view.data = data
        self.view = view
        title = data.type.rawValue
    }

}
