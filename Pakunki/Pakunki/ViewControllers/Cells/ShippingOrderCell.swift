//
//  ShippingOrderCell.swift
//  Pakunki
//
//  Created by Ann on 25.04.2021.
//

import UIKit

class ShippingOrderCell: UITableViewCell {
    @IBOutlet weak var shippoingOrderTF: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        shippoingOrderTF.layer.borderWidth = 3
        shippoingOrderTF.layer.borderColor = UIColor.init(red: 0.02, green: 0.54, blue: 0.93, alpha: 1.0).cgColor
        shippoingOrderTF.layer.cornerRadius = 13
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
