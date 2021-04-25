//
//  OrderController.swift
//  Pakunki
//
//  Created by Ann on 23.04.2021.
//

import UIKit

class OrderController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.isHidden = false
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ShippingOrderCell") as! ShippingOrderCell
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TwoAreasCell") as! TwoAreasCell
            return cell
        }else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OneAreaCell") as! OneAreaCell
            return cell
        }else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OneAreaCell") as! OneAreaCell
            cell.thirdLBL.text = "Address1:"
            return cell
        }else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OneAreaCell") as! OneAreaCell
            cell.thirdLBL.text = "Address2:"
            return cell
        }else if indexPath.row == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OneAreaCell") as! OneAreaCell
            cell.thirdLBL.text = "City:"
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TwoAreasCell") as! TwoAreasCell
            cell.firstLBL.text = "Zip code:"
            cell.secondLBL.text = "Sate:"
            return cell
        }
}
}
