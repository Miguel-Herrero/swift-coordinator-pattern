//
//  LoginViewController.swift
//  Coordinators
//
//  Created by Miguel Herrero on 21/04/2019.
//  Copyright © 2019 Miguel Herrero. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, Storyboarded {

    weak var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelLoginTapped(_ sender: Any) { coordinator?.routeToProductList() }
}
