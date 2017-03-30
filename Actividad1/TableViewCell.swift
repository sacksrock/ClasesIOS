//
//  TableViewCell.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 23/3/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var LabelCell:UILabel?
    @IBOutlet var ImgCell:UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
