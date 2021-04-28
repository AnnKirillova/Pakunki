//
//  PackagesController.swift
//  Pakunki
//
//  Created by Ann on 23.04.2021.
//

import UIKit

class PackagesController: UIViewController, UITableViewDelegate, UITableViewDataSource, OrderDelegate {
    
    
    @IBOutlet weak var topViewController: UIView!
    @IBOutlet weak var ordersTableiew: UITableView!
    
    var orders = [Order(id: "4875034875638",
                         firstName: "Ann",
                         secondName: "Kirillova",
                         phoneNumber: "+380678761715",
                         adress1: "Odessa",
                         adress2: "Vinnitsia",
                         city: "Odessa",
                         zipCode: "23234",
                         sate: "Vinnitska",
                         isActive: true)]
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.isHidden = true
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
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell") as! OrderCell
        let order = orders[indexPath.row]
        cell.id.text = "\(order.id)"
        cell.userName.text = "\(order.firstName) \(order.secondName)"
        cell.street.text = "\(order.adress1)"
        cell.city.text = "\(order.city)"
        cell.telephone.text = "\(order.phoneNumber)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let story = self.storyboard!
        let vc = story.instantiateViewController(identifier: "OrderController") as! OrderController
        vc.type = .edit
        vc.order = orders[indexPath.row]
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func addBtnAction(_ sender: UIButton) {
        let story = self.storyboard!
        let vc = story.instantiateViewController(identifier: "OrderController") as! OrderController
        vc.type = .new
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func deleteOrder(with id: String) {
        orders.removeAll { (order) -> Bool in
            return order.id == id
        }
        ordersTableiew.reloadData()
    }
    func addOrder(order: Order) {
        orders.append(order)
        ordersTableiew.reloadData()
    }
    func addChange(order: Order) {
        orders.append(order)
        ordersTableiew.reloadData()
    }
}
