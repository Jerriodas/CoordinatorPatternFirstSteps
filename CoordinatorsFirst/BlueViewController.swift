//
//  BlueViewController.swift
//  CoordinatorsFirst
//
//  Created by Jerry Gordillo on 01/02/20.
//  Copyright © 2020 JerriodasCorp. All rights reserved.
//

import UIKit
protocol BlueViewControllerDelegate: class {
    func presentBlueVC()
}

class BlueViewController: UIViewController, Storyboarded {
    weak var delegate: BlueViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
