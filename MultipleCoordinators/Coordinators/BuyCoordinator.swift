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
    
    func start(with context: Any?) {
        guard let productSegmentedControl = context as? TCSegmentedControl else { fatalError() }
        
        let vc = BuyViewController()
        vc.productSegmentedControl = productSegmentedControl
        vc.coordinator = self
        
        navigationController.pushViewController(vc, animated: true)
    }
    
}
