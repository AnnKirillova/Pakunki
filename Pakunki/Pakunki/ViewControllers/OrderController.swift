//
//  OrderController.swift
//  Pakunki
//
//  Created by Ann on 23.04.2021.
//

import UIKit

class OrderController: UIViewController{
    
    
    @IBOutlet weak var editTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editTextField.layer.borderWidth = 3
        editTextField.layer.borderColor = UIColor.init(red: 0.02, green: 0.54, blue: 0.93, alpha: 1.0).cgColor
        editTextField.layer.cornerRadius = 13
        
    }
    @IBAction func backAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
