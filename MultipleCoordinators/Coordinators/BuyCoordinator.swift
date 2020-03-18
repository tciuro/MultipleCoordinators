//
//  BuyCoordinator.swift
//  MultipleCoordinators
//
//  Created by Tito Ciuro on 3/15/20.
//  Copyright © 2020 Tito Ciuro. All rights reserved.
//

import UIKit

class BuyCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

// MARK: -

protocol BuyStartable {
    func start(with segmentedControl: TCSegmentedControl)
}

extension BuyCoordinator: BuyStartable {
    func start(with segmentedControl: TCSegmentedControl) {
        let vc = BuyViewController()
        vc.tabBarItem = UITabBarItem(title: "Buy", image: UIImage(systemName: "cart.fill"), tag: 0)
        vc.productSegmentedControl = segmentedControl
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
