//
//  CodeController.swift
//  Pakunki
//
//  Created by Ann on 23.04.2021.
//

import UIKit

class CodeController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var nextBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
         prepareView()
        
    }
    func prepareView(){
        nextBtn.layer.cornerRadius = 13
    }
}
