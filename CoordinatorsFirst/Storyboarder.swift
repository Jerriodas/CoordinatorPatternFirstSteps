//
//  Storyboarder.swift
//  CoordinatorsFirst
//
//  Created by Jerry Gordillo on 01/02/20.
//  Copyright © 2020 JerriodasCorp. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        //This gets "CoordinatorsFirst.VCName"
        let fullName = NSStringFromClass(self)
        
        //We want VCName
        let className = fullName.components(separatedBy: ".")[1]
        
        //This loads our Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate a view controller with that identifier
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
