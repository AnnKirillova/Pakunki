//
//  CodeController.swift
//  Pakunki
//
//  Created by Ann on 23.04.2021.
//

import UIKit
import FirebaseAuth

class CodeController: UIViewController {
    @IBOutlet weak var codeTextField: UITextField!
    
    @IBOutlet weak var nextBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
         prepareView()
    }
    
    func prepareView(){
        nextBtn.layer.cornerRadius = 13
      
        
        if let font = UIFont(name: "Roboto", size: 17){
            let style = NSMutableParagraphStyle()
            style.alignment = .center
            codeTextField.defaultTextAttributes.updateValue( 20, forKey: .kern)
            codeTextField.defaultTextAttributes.updateValue( font, forKey: .font)
            codeTextField.defaultTextAttributes.updateValue( style, forKey: .paragraphStyle)
        } else {
            print("Error")
        }
        
        
    }
    
    @IBAction func nextBtn(_ sender: UIButton) {
        if let verificationID = UserDefaults.standard.string(forKey: "authVerificationID"){
            let credential = PhoneAuthProvider.provider().credential(
                withVerificationID: verificationID,
                verificationCode: codeTextField.text ?? "")
            Auth.auth().signIn(with: credential) { (result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                    return
                }
                let vc = self.storyboard!.instantiateViewController(identifier: "OrderNavigation")
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true)
            }
        } else{
            print("Error")
        }
    }
    
    
    @IBAction func tapOnController(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}
