//
//  FeatureSectionCell.swift
//  AppStorePage
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import UIKit
import SnapKit

final class FeatureSectionCell: UICollectionViewCell {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "새로운 경험"
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.textColor = .systemBlue
        return label
    }()
    
    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Game Friend"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .label
        return label
    }()
    
    private lazy var subLabel: UILabel = {
        let label = UILabel()
        label.text = "친구와 재밌는 게임을 !"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textColor = .secondaryLabel
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
}

extension FeatureSectionCell {
    func configCell() {
        [titleLabel, mainLabel, subLabel, imageView].forEach {
            contentView.addSubview($0)
        }
    }
}
