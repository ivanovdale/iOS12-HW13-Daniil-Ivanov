//
//  ViewController.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 30.01.2024.
//

import UIKit

final class SettingsViewController: UIViewController {
    private let settingsFactory: SettingsFactory
    private var settings: [[Setting]]?

    // MARK: Init

    init(settingsFactory: SettingsFactory) {
        self.settingsFactory = settingsFactory
        self.settings = nil
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

    override func loadView() {
        setupView()
    }

    // MARK: Setup

    private func setupView() {
        let view = SettingsView()
        view.setupDelegate(delegate: self)
        self.view = view
    }

    // MARK: Data

    private func loadData() {
        settings = settingsFactory.createGroupedSettings()
    }
}

// MARK: - Extensions

extension SettingsViewController: UITableViewDelegate {
    
}

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings?[section].count ?? 0
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        settings?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
    }
}

