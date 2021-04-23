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
    @IBAction func nextBtn(_ sender: UIButton) {
        let storyboard = self.storyboard!
        let vc = storyboard.instantiateViewController(identifier: "PackagesController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
