//
//  ViewController.swift
//  Pakunki
//
//  Created by Ann on 22.04.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        // Do any additional setup after loading the view.
    }
    
    func prepareView(){
        loginBtn.layer.cornerRadius = 13
    }
    
    @IBAction func tapOnController(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}

