//
//  SettingImageView.swift
//  iOS12-HW13-Daniil-Ivanov
//
//  Created by Daniil (work) on 31.01.2024.
//

import UIKit

fileprivate enum Constants {
    static let imageColor = UIColor.white
    static let imageCornerRadius = SettingsTableViewCellConstants.imageSize / 4
}

class SettingImageView: UIImageView {

    // MARK: Data

    var data: Setting? {
        didSet {
            image = data?.type.image.withTintColor(Constants.imageColor, renderingMode: .alwaysOriginal)
            backgroundColor = data?.type.color
        }
    }

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupView()
        setupLayout()
    }

    // MARK: Init

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Setup

    private func setupView() {
        layer.cornerRadius = Constants.imageCornerRadius
        contentMode = .center
    }

    private func setupLayout() {
        snp.makeConstraints { make in
            make.height.width.equalTo(SettingsTableViewCellConstants.imageSize)
        }
    }

}
