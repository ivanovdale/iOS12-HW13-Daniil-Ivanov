//
//  SettingsView.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 30.01.2024.
//

import UIKit
import SnapKit

// MARK: - Constants

fileprivate enum Constants {
    static let backgroundColor = UIColor.white
}

final class SettingsView: UIView {

    // MARK: Outlets

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(
            SettingsTableViewCell.self,
            forCellReuseIdentifier: SettingsTableViewCell.identifier
        )
        tableView.separatorInset.left = SettingsTableViewCellConstants.separatorInsetLeft
        
        return tableView
    }()

    // MARK: Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Setup

    private func setupView() {
        backgroundColor = Constants.backgroundColor
    }

    private func setupHierarchy() {
        addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.left.top.right.bottom.equalToSuperview()
        }
    }

    func configureTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
}
