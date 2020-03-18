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
    
    let valueButton = GFButton(backgroundColor: .systemGreen, title: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        configureBuySubscriptionButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let productSegmentedControl = productSegmentedControl {
            let index = productSegmentedControl.selectedSegmentIndex
            valueButton.setTitle("Selected Product: " + String(productSegmentedControl.titleForSegment(at: index) ?? "???"), for: .normal)

        }
    }
    
    // MARK: -

    private func configureBuySubscriptionButton() {
        view.addSubview(valueButton)
        
        NSLayoutConstraint.activate([
            valueButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200.0),
            valueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50.0),
            valueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.0),
            valueButton.heightAnchor.constraint(equalToConstant: 50.0)
        ])
    }
}
