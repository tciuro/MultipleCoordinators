//
//  MainTabBarController.swift
//  MultipleCoordinators
//
//  Created by Tito Ciuro on 3/17/20.
//  Copyright © 2020 Tito Ciuro. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    let main = MainCoordinator(navigationController: UINavigationController())
    let buy = BuyCoordinator(navigationController: UINavigationController())
    let createAccount = CreateAccountCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()

        main.start()
        
        if let vc = main.mainViewController() as? ViewController {
            buy.start(with: vc.productSegmentedControl)
        }
        
        createAccount.start()

        viewControllers = [main.navigationController, buy.navigationController, createAccount.navigationController]
    }
}
