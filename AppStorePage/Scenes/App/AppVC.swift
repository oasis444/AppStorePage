//
//  AppVC.swift
//  AppStorePage
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import UIKit
import SnapKit
// ※ UICollectionViewCompositionalLayout을 사용하면 편리하지만 View의 계층 구조를 알아보기 위해 아래와 같은 방법으로 진행

final class AppVC: UIViewController {
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 0

        let featureSectionView = FeatureSectionView(frame: .zero)
        let rankingFeatureSectionView = UIView()
        let exchangeCodeButtonView = UIView()
        
        rankingFeatureSectionView.backgroundColor = .systemBlue
        exchangeCodeButtonView.backgroundColor = .systemYellow
        
        [featureSectionView, rankingFeatureSectionView, exchangeCodeButtonView].forEach {
            stackView.addArrangedSubview($0)
        }
        return stackView
    }()
    
    override func viewDidLoad() {
        configNavigationController()
        setupLayout()
    }
}

extension AppVC {
    private func configNavigationController() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "앱"
    }
    
    func setupLayout() {
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
//            $0.top.equalToSuperview()
            $0.bottom.leading.trailing.equalToSuperview()
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalToSuperview()
        }
        
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
