//
//  PackagesController.swift
//  Pakunki
//
//  Created by Ann on 23.04.2021.
//

import UIKit

class PackagesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var topViewController: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        prepareView()
    }
    
    func prepareView(){
        topViewController.clipsToBounds = false
        topViewController.layer.masksToBounds = false
        topViewController.layer.shadowColor = UIColor.black.cgColor
        topViewController.layer.shadowOpacity = 0.2
        topViewController.layer.shadowRadius = 5
        topViewController.layer.shadowOffset = CGSize(width: 0, height: 4)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell")!
        return cell
    }
}
