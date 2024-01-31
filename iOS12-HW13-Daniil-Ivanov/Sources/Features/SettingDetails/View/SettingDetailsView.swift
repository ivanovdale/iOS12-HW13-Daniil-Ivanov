//
//  SettingDetailsView.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 31.01.2024.
//

import UIKit
import SnapKit

fileprivate enum Constants {
    static let backgroundColor = UIColor.white
    static let imageLeadingOffset = 10.0
    static let stackSpacing = 10.0
    static let labelTextColor = UIColor.black
    static let newNotificationsText = "Новых уведомлений"
    static let alreadyConfigured = "Всё уже настроено, здесь нечего делать"
}

class SettingDetailsView: UIView {

    // MARK: Data

    var data: Setting? {
        didSet {
            configureView()
        }
    }

    // MARK: Outlets

    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = Constants.labelTextColor
        return label
    }()

    private lazy var imageView = SettingImageView(frame: .zero)

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [imageView, label])
        stackView.axis = .horizontal
        stackView.spacing = Constants.stackSpacing
        return stackView
    }()

    // MARK: Init

    override init(frame: CGRect) {
        super.init(frame: .zero)
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
        [stackView].forEach { addSubview($0) }
    }

    private func setupLayout() {
        stackView.snp.makeConstraints { make in
            make.center.equalTo(self)
        }
    }

    // MARK: View configuration

    private func configureView() {
        guard let data else { return }
        imageView.data = data
        if let settingKind = data.kind {
            switch settingKind {
            case .connectionInfo(value: let value):
                label.text = value.description
                return
            case .notification(count: let count):
                label.text = "\(Constants.newNotificationsText): \(count)"
                return
            default:
                break
            }
        }
        label.text = Constants.alreadyConfigured
    }

}
