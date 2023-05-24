//
//  SeparatorView.swift
//  AppStorePage
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import UIKit
import SnapKit

final class SeparatorView: UIView {
    
    private lazy var separator: UIView = {
        let separator = UIView()
        separator.backgroundColor = .separator
        return separator
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        self.addSubview(separator)
        
        separator.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.top.trailing.equalToSuperview()
            $0.height.equalTo(0.5)
        }
    }
}
