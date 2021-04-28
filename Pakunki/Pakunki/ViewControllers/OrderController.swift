//
//  OrderController.swift
//  Pakunki
//
//  Created by Ann on 23.04.2021.
//

import UIKit

protocol OrderDelegate: class{
    func deleteOrder(with id: String)
    func addOrder(order: Order)
    func addChange(order: Order)
}

class OrderController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var addChanges: UIButton!
    
    
    
    @IBOutlet weak var deleteBTN: UIButton!
    var type: OrderType = .edit
    var order: Order?
    weak var delegate: OrderDelegate?
    
    var idCell: ShippingOrderCell!
    var nameCell: TwoAreasCell!
    var phoneCell: OneAreaCell!
    var addres1Cell: OneAreaCell!
    var addres2Cell: OneAreaCell!
    var cityCell: OneAreaCell!
    var zipCell: TwoAreasCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        super.viewDidLoad()
        deleteBTN.layer.cornerRadius = 13
        switch type {
        case .new:
            self.title = "Create order"
            deleteBTN.setTitle("Create order", for: .normal)
            deleteBTN.backgroundColor = UIColor(red: 0.02, green: 0.54, blue: 0.93, alpha: 1)
        case .edit:
            self.title = "Edit order"
            deleteBTN.setTitle("Delete", for: .normal)
            deleteBTN.backgroundColor = UIColor(red: 0.92, green: 0.34, blue: 0.34, alpha: 1)
        }
        if type == .edit{
            addChanges.isHidden = false
        }else{
            addChanges.isHidden = true
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ShippingOrderCell") as! ShippingOrderCell
            idCell = cell
            if order != nil{
                cell.id.text = order!.id
            }
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TwoAreasCell") as! TwoAreasCell
            nameCell = cell
            if order != nil{
                cell.firstArea.text = order!.firstName
                cell.secondArea.text = order!.secondName
            }
            return cell
        }else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OneAreaCell") as! OneAreaCell
            phoneCell = cell
            if order != nil{
                cell.textArea.text = order!.phoneNumber
            }
            return cell
        }else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OneAreaCell") as! OneAreaCell
            addres1Cell = cell
            cell.thirdLBL.text = "Address1:"
            if order != nil{
                cell.textArea.text = order!.adress1
            }
            return cell
        }else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OneAreaCell") as! OneAreaCell
            addres2Cell = cell
            cell.thirdLBL.text = "Address2:"
            if order != nil{
                cell.textArea.text = order!.adress2
            }
            return cell
        }else if indexPath.row == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OneAreaCell") as! OneAreaCell
            cityCell = cell
            cell.thirdLBL.text = "City:"
            if order != nil{
                cell.textArea.text = order!.city
            }
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TwoAreasCell") as! TwoAreasCell
            zipCell = cell
            cell.firstLBL.text = "Zip code:"
            cell.secondLBL.text = "Sate:"
            if order != nil{
                cell.firstArea.text = order!.zipCode
                cell.secondArea.text = order!.sate
            }
            return cell
        }
    
    
    }
    @IBAction func deleteAction(_ sender: UIButton) {
        if type == .edit{
            
            delegate?.deleteOrder(with: order!.id)
            navigationController?.popViewController(animated: true)
        } else {
            
            let newOrder = Order(id: idCell.id.text!,
                                 firstName: nameCell.firstArea.text!,
                               secondName: nameCell.secondArea.text!,
                               phoneNumber:phoneCell.textArea.text!,
                               adress1: addres1Cell.textArea.text!,
                               adress2: addres2Cell.textArea.text!,
                               city: cityCell.textArea.text!,
                               zipCode: zipCell.firstArea.text!,
                               sate: zipCell.secondArea.text!,
                               isActive: true)
            delegate?.addOrder(order: newOrder)
            navigationController?.popViewController(animated: true)
        }
    }
    @IBAction func addChangesAction(_ sender: UIButton) {
        
        let newOrder = Order(id: idCell.id.text!,
                             firstName: nameCell.firstArea.text!,
                           secondName: nameCell.secondArea.text!,
                           phoneNumber:phoneCell.textArea.text!,
                           adress1: addres1Cell.textArea.text!,
                           adress2: addres2Cell.textArea.text!,
                           city: cityCell.textArea.text!,
                           zipCode: zipCell.firstArea.text!,
                           sate: zipCell.secondArea.text!,
                           isActive: true)
        delegate?.deleteOrder(with: order!.id)
        delegate?.addOrder(order: newOrder)
        navigationController?.popViewController(animated: true)
    }
}

enum OrderType{
    case new
    case edit
}
