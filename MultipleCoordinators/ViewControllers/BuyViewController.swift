//
//  BuyViewController.swift
//  MultipleCoordinators
//
//  Created by Tito Ciuro on 3/15/20.
//  Copyright © 2020 Tito Ciuro. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController {

    weak var coordinator: BuyCoordinator?
    weak var productSegmentedControl: TCSegmentedControl?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let productSegmentedControl = productSegmentedControl {
            let index = productSegmentedControl.selectedSegmentIndex
            title = "Selected Product: " + String(productSegmentedControl.titleForSegment(at: index) ?? "???")
        }
    }
    
}
