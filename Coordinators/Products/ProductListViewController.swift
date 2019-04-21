//
//  ProductListViewController.swift
//  Coordinators
//
//  Created by Miguel Herrero on 21/04/2019.
//  Copyright © 2019 Miguel Herrero. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController, Storyboarded {

    // MARK: - Variables

    weak var coordinator: AppCoordinator?

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Actions

    @IBAction func unwindToProductList(segue: UIStoryboardSegue) { }

    @IBAction func loginTapped(_ sender: Any) { coordinator?.login() }
    @IBAction func buyProductOneTapped(_ sender: Any) { coordinator?.buyProduct(id: "One") }
    @IBAction func buyProductTwoTapped(_ sender: Any) { coordinator?.buyProduct(id: "Two") }
    @IBAction func buyProductThreeTapped(_ sender: Any) { coordinator?.buyProduct(id: "Three") }
}
