//
//  MainCoordinator.swift
//  CoordinatorsFirst
//
//  Created by Jerry Gordillo on 01/02/20.
//  Copyright © 2020 JerriodasCorp. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinator = [Coordinator]()
    
    var navController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navController = navController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.delegate = self
        navController.pushViewController(vc, animated: true)
    }
}

extension MainCoordinator: ViewControllerDelegate {
    func changeOrangeVC() {
        let vc = OrangeViewController.instantiate()
        navController.pushViewController(vc, animated: true)
    }
    
    func changeBlueVC() {
        let vc = BlueViewController.instantiate()
        navController.pushViewController(vc, animated: true)
    }
    
}
