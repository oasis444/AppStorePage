//
//  TabBarController.swift
//  AppStorePage
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import UIKit
import SnapKit
// ※ UICollectionViewCompositionalLayout을 사용하면 편리하지만 View의 계층 구조를 알아보기 위해 아래와 같은 방법으로 진행

class TabBarController: UITabBarController {

    private lazy var todayVC: UIViewController = {
        let vc = TodayVC()
        vc.tabBarItem = UITabBarItem(
            title: "투데이",
            image: UIImage(systemName: "mail"),
            tag: 0
        )
        return vc
    }()
    
    private lazy var appVC: UIViewController = {
        let vc = UINavigationController(rootViewController: AppVC())
        vc.tabBarItem = UITabBarItem(
            title: "앱",
            image: UIImage(systemName: "square.stack.3d.up"),
            tag: 1
        )
        return vc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [todayVC, appVC]
    }
}

