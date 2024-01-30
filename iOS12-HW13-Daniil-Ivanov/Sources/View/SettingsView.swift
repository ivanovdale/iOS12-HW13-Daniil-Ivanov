//
//  SettingsView.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 30.01.2024.
//

import UIKit

final class SettingsView: UIView {

    // MARK: Outlets

    private lazy var tableView: SettingsTableView = {
        let tableView = SettingsTableView()
        return tableView
    }()

    // MARK: Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupHierarchy()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Setup

    private func setupView() {

    }

    private func setupHierarchy() {

    }

    func setupDelegate(delegate: UITableViewDelegate) {
        tableView.delegate = delegate
    }
}
