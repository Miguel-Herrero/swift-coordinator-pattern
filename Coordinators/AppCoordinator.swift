//
//  AppCoordinator.swift
//  Coordinators
//
//  Created by Miguel Herrero on 21/04/2019.
//  Copyright © 2019 Miguel Herrero. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = ProductListViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }

    func buyProduct(id: String) {
        let vc = ThankYouViewController.instantiate()
        vc.coordinator = self
        vc.productId = id
        navigationController.pushViewController(vc, animated: true)
    }

    func routeToProductList() {
        navigationController.popToRootViewController(animated: true)
    }

    func login() {
        let vc = LoginViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
