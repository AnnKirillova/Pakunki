//
//  OrderController.swift
//  Pakunki
//
//  Created by Ann on 23.04.2021.
//

import UIKit

class OrderController: UIViewController {
    @IBOutlet weak var editArea: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editArea.layer.borderWidth = 3
        editArea.layer.borderColor = UIColor.init(red: 0.02, green: 0.54, blue: 0.93, alpha: 1.0).cgColor
        editArea.layer.cornerRadius = 13
    }
    

    
}
