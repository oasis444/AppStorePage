//
//  TabBarController.swift
//  AppStorePage
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import UIKit

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

