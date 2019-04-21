//
//  ThankYouViewController.swift
//  Coordinators
//
//  Created by Miguel Herrero on 21/04/2019.
//  Copyright © 2019 Miguel Herrero. All rights reserved.
//

import UIKit

class ThankYouViewController: UIViewController, Storyboarded {

    // MARK: - Variables

    weak var coordinator: AppCoordinator?
    var productId: String?

    // MARK: - Outlets

    @IBOutlet weak var thankYouMessage: UILabel!

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let productId = productId {
            thankYouMessage.text = "You just bought product \(productId)"
        }
    }

    // MARK: - Actions
    
    @IBAction func goToProductListTapped(_ sender: Any) { coordinator?.routeToProductList() }
}
