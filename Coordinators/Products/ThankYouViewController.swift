//
//  ThankYouViewController.swift
//  Coordinators
//
//  Created by Miguel Herrero on 21/04/2019.
//  Copyright © 2019 Miguel Herrero. All rights reserved.
//

import UIKit

class ThankYouViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToProductListTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToProductList", sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}