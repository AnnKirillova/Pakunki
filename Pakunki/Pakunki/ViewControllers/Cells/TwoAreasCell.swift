//
//  TwoAreasCell.swift
//  Pakunki
//
//  Created by Ann on 25.04.2021.
//

import UIKit

class TwoAreasCell: UITableViewCell {
    @IBOutlet weak var firstArea: UITextField!
    @IBOutlet weak var secondArea: UITextField!
    
    @IBOutlet weak var firstLBL: UILabel!
    @IBOutlet weak var secondLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
