//
//  todayCell.swift
//  AppStorePage
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import UIKit
//import SnapKit

class todayCell: UICollectionViewCell {
    
    var cellInfo: (image: UIImage, subTitleText: String, titleText: String, descriptonText: String)?
    
    func setup() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 10
        
        setupSubView()
    }
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = cellInfo?.image
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12
        imageView.backgroundColor = .gray
        return imageView
    }()
    
    private lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.text = cellInfo?.subTitleText
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = cellInfo?.titleText
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = cellInfo.debugDescription
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        return label
    }()
}

private extension todayCell {
    func setupSubView() {
        [imageView, titleLabel, subTitleLabel, descriptionLabel].forEach {
            addSubview($0)
        }
        
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        subTitleLabel.snp.makeConstraints {
            $0.centerX.equalTo(imageView)
            $0.leading.top.trailing.equalToSuperview().offset(24)
        }
        
        titleLabel.snp.makeConstraints {
            $0.leading.trailing.equalTo(subTitleLabel)
            $0.top.equalTo(subTitleLabel.snp.bottom).offset(4)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.leading.bottom.trailing.equalToSuperview().inset(24)
        }
    }
}
