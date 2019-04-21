//
//  Storyboarded.swift
//  Coordinators
//
//  Created by Miguel Herrero on 21/04/2019.
//  Copyright © 2019 Miguel Herrero. All rights reserved.
//
//  SeeAlso: https://www.hackingwithswift.com/articles/71/how-to-use-the-coordinator-pattern-in-ios-apps
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        // find the class name of requested view controller
        let id = String(describing: self)

        // load our storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
