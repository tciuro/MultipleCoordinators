//
//  SceneDelegate.swift
//  MultipleCoordinators
//
//  Created by Tito Ciuro on 3/15/20.
//  Copyright © 2020 Tito Ciuro. All rights reserved.
//

// How to use the Coordinator pattern in iOS
// https://www.youtube.com/watch?v=7HgbcTqxoN4

// Advanced Coordinators in iOS
// https://www.youtube.com/watch?v=ueByb0MBMQ4

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    var coordinator: MainCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let navController = UINavigationController()
        navController.title = "Hello"
        coordinator = MainCoordinator(navigationController: navController)
        coordinator?.start(with: nil)
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
    }
    
    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
    }
    
}

