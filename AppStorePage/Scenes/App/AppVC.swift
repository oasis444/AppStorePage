//
//  AppVC.swift
//  AppStorePage
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import UIKit
import SnapKit

final class AppVC: UIViewController {
    
    override func viewDidLoad() {
        
        configNavigationbar()
    }
    
    private func configNavigationbar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "앱"
    }
}
