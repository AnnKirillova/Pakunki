//
//  OrderCell.swift
//  Pakunki
//
//  Created by Ann on 24.04.2021.
//

import UIKit

class OrderCell: UITableViewCell {

    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var deliveredRound: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var telephone: UILabel!
    @IBOutlet weak var id: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        prepareView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func prepareView(){
        deliveredRound.layer.cornerRadius = 10
        orderView.layer.cornerRadius = 10
        orderView.layer.shadowColor = UIColor.black.cgColor
        orderView.layer.shadowOpacity = 0.2
        orderView.layer.shadowOffset = CGSize(width: 0, height: 4)
    }
}
