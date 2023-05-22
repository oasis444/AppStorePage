//
//  TodayHeaderView.swift
//  AppStorePage
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import UIKit
import SnapKit

class TodayHeaderView: UICollectionReusableView {
    
    var headerInfo: (date: String, title: String)?
    
    func setup() {
        setupHeaderView()
    }
    
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.text = headerInfo?.date
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .secondaryLabel
        return label
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = headerInfo?.title
        label.font = .systemFont(ofSize: 36, weight: .black)
        label.textColor = .label
        return label
    }()
}

private extension TodayHeaderView {
    func setupHeaderView() {
        [dateLabel, titleLabel].forEach {
            addSubview($0)
        }
        
        dateLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalToSuperview().inset(32)
        }
        
        titleLabel.snp.makeConstraints {
            $0.leading.trailing.equalTo(dateLabel)
            $0.top.equalTo(dateLabel.snp.bottom).offset(8)
        }
    }
}
