//
//  ViewController.swift
//  Pakunki
//
//  Created by Ann on 22.04.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var textArea: UITextField!
    @IBOutlet weak var privacyPolicyTV: UITextView!
    
    @IBOutlet weak var checkBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    var isChecked = false
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        
        // Do any additional setup after loading the view.
    }
    
    func prepareView(){
        loginBtn.layer.cornerRadius = 13
        textArea.addTarget(nil, action: #selector(textFieldDidChange), for: .editingChanged)
//        https://i.pinimg.com/originals/d3/99/c1/d399c108c4e8b64dd9521d750eec4f8f.jpg
//        https://i.pinimg.com/originals/96/19/38/9619385799a412f779824fad47bbe45f.jpg
        
        let urlPolicy = URL(string: "https://i.pinimg.com/originals/d3/99/c1/d399c108c4e8b64dd9521d750eec4f8f.jpg")!
        let urlAgreement = URL(string: "https://i.pinimg.com/originals/96/19/38/9619385799a412f779824fad47bbe45f.jpg")!
        
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(attributedString: privacyPolicyTV.attributedText!)
        attributedString.setAttributes([.link: urlAgreement], range: NSRange(location: 65, length: 15))
        attributedString.setAttributes([.link: urlPolicy], range: NSRange(location: 89, length: 14))
        privacyPolicyTV.attributedText = attributedString
        
        self.privacyPolicyTV.linkTextAttributes = [.foregroundColor: UIColor(red: 0.02, green: 0.54, blue: 0.93, alpha: 1),
                                                   .underlineStyle:NSUnderlineStyle.single.rawValue]
        
        
    }
    @objc func textFieldDidChange(_textField: UITextField){
        if textArea.text != ""{
            showPolicy()
        } else {
            hidePolicy()
        }
        
        if textArea.text?.count == 1 && textArea.text != "+"{
            textArea.text = "+\(textArea.text!)"
        }
    }
    
    @IBAction func tapOnController(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func checkButton(_ sender: UIButton) {
        isChecked = !isChecked
        if isChecked{
            sender.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        }else{
            sender.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        }
    }
    
    func showPolicy(){
        privacyPolicyTV.isHidden = false
        checkBtn.isHidden = false
    }
    
    func hidePolicy(){
        privacyPolicyTV.isHidden = true
        checkBtn.isHidden = true
    }
    @IBAction func loginBtnAction(_ sender: UIButton) {
        let storyboard = self.storyboard!
        let vc = storyboard.instantiateViewController(identifier: "CodeController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

