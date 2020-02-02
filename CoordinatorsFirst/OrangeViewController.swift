//
//  OrangeViewController.swift
//  CoordinatorsFirst
//
//  Created by Jerry Gordillo on 01/02/20.
//  Copyright © 2020 JerriodasCorp. All rights reserved.
//

import UIKit

protocol OrangeViewControllerDelegate: class {
    func presentOrangeVC()
}

class OrangeViewController: UIViewController, Storyboarded {
    weak var delegate: OrangeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
