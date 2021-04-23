//
//  PackagesController.swift
//  Pakunki
//
//  Created by Ann on 23.04.2021.
//

import UIKit

class PackagesController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func plusAction(_ sender: UIButton) {
        let storyboard = self.storyboard!
        let vc = storyboard.instantiateViewController(identifier: "OrderController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
