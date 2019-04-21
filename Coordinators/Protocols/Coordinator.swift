//
//  Coordinator.swift
//  Coordinators
//
//  Created by Miguel Herrero on 21/04/2019.
//  Copyright © 2019 Miguel Herrero. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
