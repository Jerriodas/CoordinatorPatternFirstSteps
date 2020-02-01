//
//  Coordinator.swift
//  CoordinatorsFirst
//
//  Created by Jerry Gordillo on 01/02/20.
//  Copyright © 2020 JerriodasCorp. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinator: [Coordinator] { get set }
    var navController: UINavigationController { get set }
    
    func start()
}
