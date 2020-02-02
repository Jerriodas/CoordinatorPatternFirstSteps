//
//  ViewController.swift
//  CoordinatorsFirst
//
//  Created by Jerry Gordillo on 01/02/20.
//  Copyright © 2020 JerriodasCorp. All rights reserved.
//

import UIKit

protocol ViewControllerDelegate: class {
    func changeOrangeVC()
    func changeBlueVC()
}

class ViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    var delegate: ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        orangeButton.addTarget(self, action: #selector(orangePressed), for: .touchUpInside)
        blueButton.addTarget(self, action: #selector(bluePressed), for: .touchUpInside)
    }
    
    @objc func orangePressed(){
        delegate?.changeOrangeVC()
    }
    
    @objc func bluePressed(){
        delegate?.changeBlueVC()
    }
}

