//
//  CodeController.swift
//  Pakunki
//
//  Created by Ann on 23.04.2021.
//

import UIKit

class CodeController: UIViewController {
    @IBOutlet weak var codeTextField: UITextField!
    
    @IBOutlet weak var nextBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
         prepareView()
    }
    
    func prepareView(){
        nextBtn.layer.cornerRadius = 13
        
        let font = UIFont(name: "Roboto", size: 17)!
        let style = NSMutableParagraphStyle()
        style.alignment = .center
        
        codeTextField.defaultTextAttributes.updateValue( 50, forKey: .kern)
        codeTextField.defaultTextAttributes.updateValue( font, forKey: .font)
        codeTextField.defaultTextAttributes.updateValue( style, forKey: .paragraphStyle)
    }
    
    @IBAction func nextBtn(_ sender: UIButton) {
        let storyboard = self.storyboard!
        let vc = storyboard.instantiateViewController(identifier: "PackagesController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
