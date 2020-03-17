//
//  ViewController.swift
//  MultipleCoordinators
//
//  Created by Tito Ciuro on 3/15/20.
//  Copyright © 2020 Tito Ciuro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    
    let logoImageView = UIImageView()
    let buySubscriptionButton = GFButton(backgroundColor: .systemGreen, title: "Buy Subscription")
    let createAccountButton = GFButton(backgroundColor: .systemGreen, title: "Create Account")
    let productSegmentedControl = TCSegmentedControl(items: ["Bread", "Water"], backgroundColor: .systemGreen)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoView()
        configureBuySubscriptionButton()
        configureCreateAccountButton()
        configureProductSegmentedControl()
    }
    
    // MARK: -

    private func configureLogoView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80.0),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200.0),
            logoImageView.widthAnchor.constraint(equalToConstant: 200.0)
        ])
    }
    
    // MARK: -

    private func configureBuySubscriptionButton() {
        view.addSubview(buySubscriptionButton)
        
        buySubscriptionButton.addTarget(self, action: #selector(buySubscription), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buySubscriptionButton.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 50.0),
            buySubscriptionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50.0),
            buySubscriptionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.0),
            buySubscriptionButton.heightAnchor.constraint(equalToConstant: 50.0)
        ])
    }
    
    @objc private func buySubscription() {
        coordinator?.buySubscription(with: productSegmentedControl)
    }
    
    // MARK: -
    
    private func configureCreateAccountButton() {
        view.addSubview(createAccountButton)
        
        createAccountButton.addTarget(self, action: #selector(createAccount), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            createAccountButton.topAnchor.constraint(equalTo: buySubscriptionButton.bottomAnchor, constant: 20.0),
            createAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50.0),
            createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.0),
            createAccountButton.heightAnchor.constraint(equalToConstant: 50.0)
        ])
    }
    
    @objc private func createAccount() {
        coordinator?.createAccount()
    }
    
    // MARK: -
    
    private func configureProductSegmentedControl() {
        view.addSubview(productSegmentedControl)
        
        NSLayoutConstraint.activate([
            productSegmentedControl.topAnchor.constraint(equalTo: createAccountButton.bottomAnchor, constant: 20.0),
            productSegmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50.0),
            productSegmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.0),
            productSegmentedControl.heightAnchor.constraint(equalToConstant: 50.0)
        ])
    }

}

