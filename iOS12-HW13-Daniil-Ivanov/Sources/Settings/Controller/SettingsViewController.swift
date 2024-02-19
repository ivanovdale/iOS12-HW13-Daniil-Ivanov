//
//  ViewController.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 30.01.2024.
//

import UIKit

final class SettingsViewController: UIViewController {
    private var settings: [[Setting]]?

    // MARK: Init

    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }

    override func loadView() {
        setupView()
    }

    // MARK: Setup

    private func setupView() {
        let view = SettingsView()
        view.configureTableView(delegate: self, dataSource: self)
        self.view = view
        self.title = Constants.title
    }

    // MARK: Data

    private func fetchData() {
        settings = SettingsFactory.createGroupedSettings()
    }
}

// MARK: - Extensions

extension SettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let data = settings?[indexPath.section][indexPath.row] else { return }

        print("Нажата ячейка \(data.type.rawValue)")
        tableView.deselectRow(at: indexPath, animated: true)

        if let accessory = data.kind {
            switch accessory {
            case .switcher(_):
                break
            default:
                guard let navigationController else { return }

                let detailsController = SettingDetailsViewController(data: data)
                navigationController.pushViewController(detailsController, animated: true)
            }
        }
    }
}

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings?[section].count ?? 0
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        settings?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCell.identifier, for: indexPath) as? SettingsTableViewCell
        cell?.data = settings?[indexPath.section][indexPath.row]
        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        SettingsTableViewCellConstants.rowHeight
    }
}

// MARK: - Constants

fileprivate enum Constants {
    static let title = "Настройки"
}
